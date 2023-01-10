import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:todo_tasks_with_alert/model/event.dart';
import 'package:todo_tasks_with_alert/model/event_data_source.dart';
import 'package:todo_tasks_with_alert/modules/search_events/search_controller.dart';
import 'package:todo_tasks_with_alert/shared/componets/componets.dart';
import 'package:todo_tasks_with_alert/shared/styles/styles.dart';

class SearchEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(
        init: SearchController(),
        builder: (searchController) {
          return Scaffold(
              appBar: AppBar(
                title: Text(
                  'Events Calendar',
                  style: eventheaderStyle,
                ),
              ),
              body: SfCalendar(
                showDatePickerButton: true,
                allowedViews: [
                  CalendarView.day,
                  CalendarView.week,
                  CalendarView.month,
                  CalendarView.schedule
                ],
                dataSource: EventDataSource(searchController.all_event),
                view: CalendarView.month,
                firstDayOfWeek: 1,
                monthViewSettings: const MonthViewSettings(
                    showAgenda: true,
                    appointmentDisplayMode:
                        MonthAppointmentDisplayMode.appointment),
                onTap: (CalendarTapDetails calendarTapDetails) {
                  print(calendarTapDetails.date.toString());
                },
                onViewChanged: (viewChangedDetails) {
                  searchController.getallevents(
                      firstVisibleDate: viewChangedDetails.visibleDates.first,
                      lastVisibleDate: viewChangedDetails.visibleDates.last);
                },
              ));
        });
  }
}

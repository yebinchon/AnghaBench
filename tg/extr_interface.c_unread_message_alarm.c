
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int event_free (scalar_t__) ;
 int print_read_list (scalar_t__,int ) ;
 scalar_t__ unread_message_count ;
 scalar_t__ unread_message_event ;
 int unread_message_list ;

void unread_message_alarm (evutil_socket_t fd, short what, void *arg) {
  print_read_list (unread_message_count, unread_message_list);
  unread_message_count = 0;
  event_free (unread_message_event);
  unread_message_event = 0;
}

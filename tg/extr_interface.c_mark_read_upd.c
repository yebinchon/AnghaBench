
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_0; int member_1; } ;
struct tgl_state {int ev_base; } ;
struct tgl_message {int dummy; } ;


 scalar_t__ MAX_UNREAD_MESSAGE_COUNT ;
 struct tgl_state* TLS ;
 int assert (int) ;
 int binlog_read ;
 int event_add (scalar_t__,struct timeval*) ;
 int event_free (scalar_t__) ;
 scalar_t__ evtimer_new (int ,int ,int ) ;
 int log_level ;
 int memcpy (scalar_t__,struct tgl_message**,int) ;
 int print_read_list (int,scalar_t__) ;
 int unread_message_alarm ;
 scalar_t__ unread_message_count ;
 scalar_t__ unread_message_event ;
 scalar_t__ unread_message_list ;

void mark_read_upd (struct tgl_state *TLSR, int num, struct tgl_message *list[]) {
  assert (TLSR == TLS);
  if (!binlog_read) { return; }
  if (log_level < 1) { return; }

  if (unread_message_count + num <= MAX_UNREAD_MESSAGE_COUNT) {
    memcpy (unread_message_list + unread_message_count, list, num * sizeof (void *));
    unread_message_count += num;

    if (!unread_message_event) {
      unread_message_event = evtimer_new (TLS->ev_base, unread_message_alarm, 0);
      static struct timeval ptimeout = { 1, 0};
      event_add (unread_message_event, &ptimeout);
    }
  } else {
    print_read_list (unread_message_count, unread_message_list);
    print_read_list (num, list);
    unread_message_count = 0;
    if (unread_message_event) {
      event_free (unread_message_event);
      unread_message_event = 0;
    }
  }
}

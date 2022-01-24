#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {int member_0; int /*<<< orphan*/  member_1; } ;
struct tgl_state {int /*<<< orphan*/  ev_base; } ;
struct tgl_message {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_UNREAD_MESSAGE_COUNT ; 
 struct tgl_state* TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  binlog_read ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int log_level ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct tgl_message**,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  unread_message_alarm ; 
 scalar_t__ unread_message_count ; 
 scalar_t__ unread_message_event ; 
 scalar_t__ unread_message_list ; 

void FUNC6 (struct tgl_state *TLSR, int num, struct tgl_message *list[]) {
  FUNC0 (TLSR == TLS);
  if (!binlog_read) { return; }
  if (log_level < 1) { return; }

  if (unread_message_count + num <= MAX_UNREAD_MESSAGE_COUNT) {
    FUNC4 (unread_message_list + unread_message_count, list, num * sizeof (void *));
    unread_message_count += num;

    if (!unread_message_event) {
      unread_message_event = FUNC3 (TLS->ev_base, unread_message_alarm, 0);
      static struct timeval ptimeout = { 1, 0};
      FUNC1 (unread_message_event, &ptimeout);
    }
  } else {
    FUNC5 (unread_message_count, unread_message_list);
    FUNC5 (num, list);
    unread_message_count = 0;
    if (unread_message_event) {
      FUNC2 (unread_message_event);
      unread_message_event = 0;
    }
  }
}
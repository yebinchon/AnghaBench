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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm_cnt ; 
 int /*<<< orphan*/  termination_signal_handler ; 
 scalar_t__ FUNC1 (int,char*,int) ; 

void FUNC2 (int signum __attribute__ ((unused))) {
  FUNC0 (signum, termination_signal_handler);
  //set_terminal_attributes ();
  if (FUNC1 (1, "SIGTERM/SIGINT received\n", 25) < 0) { 
    // Sad thing
  }
  //if (TLS && TLS->ev_base) {
  //  event_base_loopbreak (TLS->ev_base);
  //}
  sigterm_cnt ++;
}
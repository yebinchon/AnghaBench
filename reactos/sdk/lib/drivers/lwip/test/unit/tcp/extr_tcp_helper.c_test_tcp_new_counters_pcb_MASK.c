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
struct test_tcp_counters {int dummy; } ;
struct tcp_pcb {void* snd_wnd_max; void* snd_wnd; } ;

/* Variables and functions */
 void* TCP_WND ; 
 int /*<<< orphan*/  FUNC0 (struct tcp_pcb*,struct test_tcp_counters*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 struct tcp_pcb* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_tcp_counters_err ; 
 int /*<<< orphan*/  test_tcp_counters_recv ; 

struct tcp_pcb*
FUNC4(struct test_tcp_counters* counters)
{
  struct tcp_pcb* pcb = FUNC2();
  if (pcb != NULL) {
    /* set up args and callbacks */
    FUNC0(pcb, counters);
    FUNC3(pcb, test_tcp_counters_recv);
    FUNC1(pcb, test_tcp_counters_err);
    pcb->snd_wnd = TCP_WND;
    pcb->snd_wnd_max = TCP_WND;
  }
  return pcb;
}
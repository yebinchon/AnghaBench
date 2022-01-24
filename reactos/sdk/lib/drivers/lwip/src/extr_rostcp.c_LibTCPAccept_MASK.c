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
struct tcp_pcb {int dummy; } ;
typedef  int /*<<< orphan*/  PTCP_PCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  InternalErrorEventHandler ; 
 int /*<<< orphan*/  InternalRecvEventHandler ; 
 int /*<<< orphan*/  InternalSendEventHandler ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(PTCP_PCB pcb, struct tcp_pcb *listen_pcb, void *arg)
{
    FUNC0(arg);

    FUNC2(pcb, NULL);
    FUNC4(pcb, InternalRecvEventHandler);
    FUNC5(pcb, InternalSendEventHandler);
    FUNC3(pcb, InternalErrorEventHandler);
    FUNC2(pcb, arg);

    FUNC1(listen_pcb);
}
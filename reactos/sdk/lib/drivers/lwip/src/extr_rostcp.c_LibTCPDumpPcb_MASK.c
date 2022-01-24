#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct tcp_pcb {size_t state; int /*<<< orphan*/  remote_port; TYPE_1__ remote_ip; } ;
typedef  scalar_t__ PVOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,...) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tcp_state_str ; 

void
FUNC2(PVOID SocketContext)
{
    struct tcp_pcb *pcb = (struct tcp_pcb*)SocketContext;
    unsigned int addr = FUNC1(pcb->remote_ip.addr);

    FUNC0("\tState: %s\n", tcp_state_str[pcb->state]);
    FUNC0("\tRemote: (%d.%d.%d.%d, %d)\n",
    (addr >> 24) & 0xFF,
    (addr >> 16) & 0xFF,
    (addr >> 8) & 0xFF,
    addr & 0xFF,
    pcb->remote_port);
}
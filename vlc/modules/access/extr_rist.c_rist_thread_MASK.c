#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_13__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_14__ {int nack_type; TYPE_1__* flow; int /*<<< orphan*/  p_fifo; } ;
typedef  TYPE_3__ stream_sys_t ;
struct TYPE_15__ {scalar_t__ i_buffer; } ;
typedef  TYPE_4__ block_t ;
struct TYPE_12__ {int /*<<< orphan*/  fd_nack; } ;

/* Variables and functions */
#define  NACK_FMT_BITMASK 128 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 

__attribute__((used)) static void *FUNC7(void *data)
{
    stream_t *p_access = data;
    stream_sys_t *p_sys = p_access->p_sys;

    /* Process nacks every 5ms */
    /* We only ask for the relevant ones */
    for (;;) {
        block_t *pkt_nacks = FUNC0(p_sys->p_fifo);

        int canc = FUNC6();

        /* there are two bytes per nack */
        uint16_t nack_count = (uint16_t)pkt_nacks->i_buffer/2;
        switch(p_sys->nack_type) {
            case NACK_FMT_BITMASK:
                FUNC3(p_access, p_sys->flow->fd_nack, pkt_nacks, nack_count);
                break;

            default:
                FUNC4(p_access, p_sys->flow->fd_nack, pkt_nacks, nack_count);
        }

        if (nack_count > 1)
            FUNC2(p_access, "Sent %u NACKs !!!", nack_count);
        FUNC1(pkt_nacks);

        FUNC5 (canc);
    }

    return NULL;
}
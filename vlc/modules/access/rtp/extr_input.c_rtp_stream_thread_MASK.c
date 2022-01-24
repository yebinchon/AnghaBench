#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int ssize_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_11__ {int fd; int /*<<< orphan*/  session; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_12__ {int i_buffer; int /*<<< orphan*/ * p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WAITALL ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 () ; 

void *FUNC11 (void *opaque)
{
#ifndef _WIN32
    demux_t *demux = opaque;
    demux_sys_t *sys = demux->p_sys;
    int fd = sys->fd;

    for (;;)
    {
        /* There is no reordering on stream sockets, so no timeout. */
        ssize_t val;

        uint16_t frame_len;
        if (FUNC4 (fd, &frame_len, 2, MSG_WAITALL) != 2)
            break;

        block_t *block = FUNC0 (FUNC3 (frame_len));
        if (FUNC7(block == NULL))
            break;

        FUNC2 (block);
        val = FUNC4 (fd, block->p_buffer, block->i_buffer, MSG_WAITALL);
        FUNC8 ();

        if (val != (ssize_t)block->i_buffer)
        {
            FUNC1 (block);
            break;
        }

        int canc = FUNC10 ();
        FUNC6 (demux, block);
        FUNC5 (demux, sys->session);
        FUNC9 (canc);
    }
#else
    (void) opaque;
#endif
    return NULL;
}
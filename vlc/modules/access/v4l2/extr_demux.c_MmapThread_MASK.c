#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int fd; scalar_t__ revents; void* events; } ;
typedef  int nfds_t ;
struct TYPE_9__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_10__ {int fd; int /*<<< orphan*/ * vbi; int /*<<< orphan*/  es; int /*<<< orphan*/  block_flags; int /*<<< orphan*/  bufv; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_11__ {int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_flags; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* POLLIN ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static void *FUNC12 (void *data)
{
    demux_t *demux = data;
    demux_sys_t *sys = demux->p_sys;
    int fd = sys->fd;
    struct pollfd ufd[2];
    nfds_t numfds = 1;

    ufd[0].fd = fd;
    ufd[0].events = POLLIN;

#ifdef ZVBI_COMPILED
    if (sys->vbi != NULL)
    {
        ufd[1].fd = GetFdVBI (sys->vbi);
        ufd[1].events = POLLIN;
        numfds++;
    }
#endif

    for (;;)
    {
        /* Wait for data */
        if (FUNC7 (ufd, numfds, -1) == -1)
        {
           if (errno != EINTR)
               FUNC6 (demux, "poll error: %s", FUNC11(errno));
           continue;
        }

        if( ufd[0].revents )
        {
            int canc = FUNC10 ();
            block_t *block = FUNC2 (FUNC3(demux), fd, sys->bufv);
            if (block != NULL)
            {
                block->i_flags |= sys->block_flags;
                FUNC5(demux->out, block->i_pts);
                FUNC4 (demux->out, sys->es, block);
            }
            FUNC9 (canc);
        }
#ifdef ZVBI_COMPILED
        if (sys->vbi != NULL && ufd[1].revents)
            GrabVBI (demux, sys->vbi);
#endif
    }

    FUNC8 ();
}
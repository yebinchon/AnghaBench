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
typedef  int ssize_t ;
typedef  int nfds_t ;
struct TYPE_9__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_10__ {int fd; int /*<<< orphan*/ * vbi; int /*<<< orphan*/  es; int /*<<< orphan*/  block_flags; int /*<<< orphan*/  blocksize; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_11__ {int i_buffer; int /*<<< orphan*/  i_pts; int /*<<< orphan*/ * p_buffer; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* POLLIN ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pollfd*,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void *FUNC15 (void *data)
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
               FUNC6 (demux, "poll error: %s", FUNC13(errno));
           continue;
        }

        if( ufd[0].revents )
        {
            block_t *block = FUNC2 (sys->blocksize);
            if (FUNC8(block == NULL))
            {
                FUNC6 (demux, "read error: %s", FUNC13(errno));
                FUNC9 (fd, NULL, 0); /* discard frame */
                continue;
            }
            block->i_pts = block->i_dts = FUNC14 ();
            block->i_flags |= sys->block_flags;

            int canc = FUNC12 ();
            ssize_t val = FUNC9 (fd, block->p_buffer, block->i_buffer);
            if (val != -1)
            {
                block->i_buffer = val;
                FUNC5(demux->out, block->i_pts);
                FUNC4 (demux->out, sys->es, block);
            }
            else
                FUNC3 (block);
            FUNC11 (canc);
        }
#ifdef ZVBI_COMPILED
        if (sys->vbi != NULL && ufd[1].revents)
            GrabVBI (demux, sys->vbi);
#endif
    }
    FUNC10 ();
}
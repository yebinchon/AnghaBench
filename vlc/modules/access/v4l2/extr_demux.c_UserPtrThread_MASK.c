#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ userptr; } ;
struct v4l2_buffer {int /*<<< orphan*/  length; TYPE_1__ m; int /*<<< orphan*/  memory; int /*<<< orphan*/  type; } ;
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
typedef  int nfds_t ;
struct TYPE_12__ {int /*<<< orphan*/  out; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_13__ {int fd; int /*<<< orphan*/  es; int /*<<< orphan*/  block_flags; int /*<<< orphan*/  blocksize; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_14__ {void* p_buffer; int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_dts; int /*<<< orphan*/  i_buffer; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_buffer*) ; 
 int /*<<< orphan*/  POLLIN ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_MEMORY_USERPTR ; 
 int /*<<< orphan*/  VIDIOC_DQBUF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct pollfd*,int,int) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,struct v4l2_buffer*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

__attribute__((used)) static void *FUNC15 (void *data)
{
    demux_t *demux = data;
    demux_sys_t *sys = demux->p_sys;
    int fd = sys->fd;
    struct pollfd ufd[2];
    nfds_t numfds = 1;

    ufd[0].fd = fd;
    ufd[0].events = POLLIN;

    int canc = FUNC13 ();
    for (;;)
    {
        struct v4l2_buffer buf = {
            .type = V4L2_BUF_TYPE_VIDEO_CAPTURE,
            .memory = V4L2_MEMORY_USERPTR,
        };
        block_t *block = FUNC1 (FUNC2(demux), fd, sys->blocksize);
        if (block == NULL)
            break;

        /* Wait for data */
        FUNC12 (canc);
        FUNC5 (block);
        while (FUNC9 (ufd, numfds, -1) == -1)
           if (errno != EINTR)
               FUNC8 (demux, "poll error: %s", FUNC14(errno));
        FUNC11 ();
        canc = FUNC13 ();

        if (FUNC10 (fd, VIDIOC_DQBUF, &buf) < 0)
        {
            FUNC8 (demux, "cannot dequeue buffer: %s",
                     FUNC14(errno));
            FUNC4 (block);
            continue;
        }

        FUNC3 (block->p_buffer == (void *)buf.m.userptr);
        block->i_buffer = buf.length;
        block->i_pts = block->i_dts = FUNC0 (&buf);
        block->i_flags |= sys->block_flags;
        FUNC7(demux->out, block->i_pts);
        FUNC6 (demux->out, sys->es, block);
    }
    FUNC12 (canc); /* <- hmm, this is purely cosmetic */
    return NULL;
}
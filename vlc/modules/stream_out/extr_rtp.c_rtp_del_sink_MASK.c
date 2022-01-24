#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int sinkc; int /*<<< orphan*/  lock_sink; TYPE_2__* sinkv; } ;
typedef  TYPE_1__ sout_stream_id_sys_t ;
struct TYPE_6__ {int member_0; int rtp_fd; int /*<<< orphan*/  rtcp; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_2__ rtp_sink_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5( sout_stream_id_sys_t *id, int fd )
{
    rtp_sink_t sink = { fd, NULL };

    /* NOTE: must be safe to use if fd is not included */
    FUNC3( &id->lock_sink );
    for( int i = 0; i < id->sinkc; i++ )
    {
        if (id->sinkv[i].rtp_fd == fd)
        {
            sink = id->sinkv[i];
            FUNC1(id->sinkc, id->sinkv, i);
            break;
        }
    }
    FUNC4( &id->lock_sink );

    FUNC0( sink.rtcp );
    FUNC2( sink.rtp_fd );
}
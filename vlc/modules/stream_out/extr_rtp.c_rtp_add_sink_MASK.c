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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock_sink; int /*<<< orphan*/  i_seq_sent_next; int /*<<< orphan*/  sinkv; int /*<<< orphan*/  sinkc; int /*<<< orphan*/  p_stream; } ;
typedef  TYPE_1__ sout_stream_id_sys_t ;
struct TYPE_6__ {int member_0; int /*<<< orphan*/ * rtcp; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_2__ rtp_sink_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6( sout_stream_id_sys_t *id, int fd, bool rtcp_mux, uint16_t *seq )
{
    rtp_sink_t sink = { fd, NULL };
    sink.rtcp = FUNC0( FUNC2( id->p_stream ), fd, IPPROTO_UDP,
                          rtcp_mux );
    if( sink.rtcp == NULL )
        FUNC3( id->p_stream, "RTCP failed!" );

    FUNC4( &id->lock_sink );
    FUNC1(id->sinkc, id->sinkv, sink);
    if( seq != NULL )
        *seq = id->i_seq_sent_next;
    FUNC5( &id->lock_sink );
    return VLC_SUCCESS;
}
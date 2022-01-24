#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  psz_host; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ vlc_url_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_18__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_block; int /*<<< orphan*/  psz_url; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_19__ {int b_flag_discontinuity; int b_disablenacks; int b_sendnacks; int /*<<< orphan*/  thread; int /*<<< orphan*/ * p_fifo; TYPE_10__* flow; void* i_poll_timeout; void* i_max_packet_size; void* nack_type; void* b_sendblindnacks; int /*<<< orphan*/  b_ismulticast; int /*<<< orphan*/  lock; } ;
typedef  TYPE_3__ stream_sys_t ;
struct TYPE_16__ {void* reorder_buffer; void* retry_interval; void* latency; void* rtp_latency; void* max_retries; } ;

/* Variables and functions */
 int /*<<< orphan*/  BlockRIST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  Control ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_INPUT ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,void*) ; 
 int /*<<< orphan*/  rist_thread ; 
 TYPE_10__* FUNC6 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (TYPE_2__*,char*) ; 
 void* FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC16(vlc_object_t *p_this)
{
    stream_t     *p_access = (stream_t*)p_this;
    stream_sys_t *p_sys = NULL;
    vlc_url_t     parsed_url = { 0 };

    p_sys = FUNC15( p_this, 1, sizeof( *p_sys ) );
    if( FUNC8( p_sys == NULL ) )
        return VLC_ENOMEM;

    p_access->p_sys = p_sys;

    FUNC14( &p_sys->lock );

    if ( FUNC12( &parsed_url, p_access->psz_url ) == -1 )
    {
        FUNC4( p_access, "Failed to parse input URL (%s)",
            p_access->psz_url );
        goto failed;
    }

    /* Initialize rist flow */
    p_sys->b_ismulticast = FUNC3(parsed_url.psz_host);
    p_sys->flow = FUNC6(p_access, &parsed_url, p_sys->b_ismulticast);
    FUNC11( &parsed_url );
    if (!p_sys->flow)
    {
        FUNC4( p_access, "Failed to open rist flow (%s)",
            p_access->psz_url );
        goto failed;
    }

    p_sys->b_flag_discontinuity = false;
    p_sys->b_disablenacks = FUNC9( p_access, "disable-nacks" );
    p_sys->b_sendblindnacks = FUNC9( p_access, "mcast-blind-nacks" );
    if (p_sys->b_sendblindnacks && p_sys->b_disablenacks == false)
        p_sys->b_sendnacks = true;
    else
        p_sys->b_sendnacks = false;
    p_sys->nack_type = FUNC10( p_access, "nack-type" );
    p_sys->i_max_packet_size = FUNC10( p_access, "packet-size" );
    p_sys->i_poll_timeout = FUNC10( p_access, "maximum-jitter" );
    p_sys->flow->retry_interval = FUNC10( p_access, "retry-interval" );
    p_sys->flow->max_retries = FUNC10( p_access, "max-retries" );
    p_sys->flow->latency = FUNC10( p_access, "latency" );
    if (p_sys->b_disablenacks)
        p_sys->flow->reorder_buffer = p_sys->flow->latency;
    else
        p_sys->flow->reorder_buffer = FUNC10( p_access, "reorder-buffer" );
    FUNC5(p_access, "Setting queue latency to %d ms", p_sys->flow->latency);

    /* Convert to rtp times */
    p_sys->flow->rtp_latency = FUNC7(FUNC1(p_sys->flow->latency));
    p_sys->flow->retry_interval = FUNC7(FUNC1(p_sys->flow->retry_interval));
    p_sys->flow->reorder_buffer = FUNC7(FUNC1(p_sys->flow->reorder_buffer));

    p_sys->p_fifo = FUNC2();
    if( FUNC8(p_sys->p_fifo == NULL) )
        goto failed;

    /* This extra thread is for sending feedback/nack packets even when no data comes in */
    if (FUNC13(&p_sys->thread, rist_thread, p_access, VLC_THREAD_PRIORITY_INPUT))
    {
        FUNC4(p_access, "Failed to create worker thread.");
        goto failed;
    }

    p_access->pf_block = BlockRIST;
    p_access->pf_control = Control;

    return VLC_SUCCESS;

failed:
    FUNC0( p_access );
    return VLC_EGENERIC;
}
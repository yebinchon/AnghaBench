
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_17__ {int psz_host; int member_0; } ;
typedef TYPE_1__ vlc_url_t ;
typedef int vlc_object_t ;
struct TYPE_18__ {int pf_control; int pf_block; int psz_url; TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_19__ {int b_flag_discontinuity; int b_disablenacks; int b_sendnacks; int thread; int * p_fifo; TYPE_10__* flow; void* i_poll_timeout; void* i_max_packet_size; void* nack_type; void* b_sendblindnacks; int b_ismulticast; int lock; } ;
typedef TYPE_3__ stream_sys_t ;
struct TYPE_16__ {void* reorder_buffer; void* retry_interval; void* latency; void* rtp_latency; void* max_retries; } ;


 int BlockRIST ;
 int Clean (TYPE_2__*) ;
 int Control ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_INPUT ;
 int VLC_TICK_FROM_MS (void*) ;
 int * block_FifoNew () ;
 int is_multicast_address (int ) ;
 int msg_Err (TYPE_2__*,char*,...) ;
 int msg_Info (TYPE_2__*,char*,void*) ;
 int rist_thread ;
 TYPE_10__* rist_udp_receiver (TYPE_2__*,TYPE_1__*,int ) ;
 void* rtp_get_ts (int ) ;
 scalar_t__ unlikely (int ) ;
 void* var_InheritBool (TYPE_2__*,char*) ;
 void* var_InheritInteger (TYPE_2__*,char*) ;
 int vlc_UrlClean (TYPE_1__*) ;
 int vlc_UrlParse (TYPE_1__*,int ) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_2__*,int ) ;
 int vlc_mutex_init (int *) ;
 TYPE_3__* vlc_obj_calloc (int *,int,int) ;

__attribute__((used)) static int Open(vlc_object_t *p_this)
{
    stream_t *p_access = (stream_t*)p_this;
    stream_sys_t *p_sys = ((void*)0);
    vlc_url_t parsed_url = { 0 };

    p_sys = vlc_obj_calloc( p_this, 1, sizeof( *p_sys ) );
    if( unlikely( p_sys == ((void*)0) ) )
        return VLC_ENOMEM;

    p_access->p_sys = p_sys;

    vlc_mutex_init( &p_sys->lock );

    if ( vlc_UrlParse( &parsed_url, p_access->psz_url ) == -1 )
    {
        msg_Err( p_access, "Failed to parse input URL (%s)",
            p_access->psz_url );
        goto failed;
    }


    p_sys->b_ismulticast = is_multicast_address(parsed_url.psz_host);
    p_sys->flow = rist_udp_receiver(p_access, &parsed_url, p_sys->b_ismulticast);
    vlc_UrlClean( &parsed_url );
    if (!p_sys->flow)
    {
        msg_Err( p_access, "Failed to open rist flow (%s)",
            p_access->psz_url );
        goto failed;
    }

    p_sys->b_flag_discontinuity = 0;
    p_sys->b_disablenacks = var_InheritBool( p_access, "disable-nacks" );
    p_sys->b_sendblindnacks = var_InheritBool( p_access, "mcast-blind-nacks" );
    if (p_sys->b_sendblindnacks && p_sys->b_disablenacks == 0)
        p_sys->b_sendnacks = 1;
    else
        p_sys->b_sendnacks = 0;
    p_sys->nack_type = var_InheritInteger( p_access, "nack-type" );
    p_sys->i_max_packet_size = var_InheritInteger( p_access, "packet-size" );
    p_sys->i_poll_timeout = var_InheritInteger( p_access, "maximum-jitter" );
    p_sys->flow->retry_interval = var_InheritInteger( p_access, "retry-interval" );
    p_sys->flow->max_retries = var_InheritInteger( p_access, "max-retries" );
    p_sys->flow->latency = var_InheritInteger( p_access, "latency" );
    if (p_sys->b_disablenacks)
        p_sys->flow->reorder_buffer = p_sys->flow->latency;
    else
        p_sys->flow->reorder_buffer = var_InheritInteger( p_access, "reorder-buffer" );
    msg_Info(p_access, "Setting queue latency to %d ms", p_sys->flow->latency);


    p_sys->flow->rtp_latency = rtp_get_ts(VLC_TICK_FROM_MS(p_sys->flow->latency));
    p_sys->flow->retry_interval = rtp_get_ts(VLC_TICK_FROM_MS(p_sys->flow->retry_interval));
    p_sys->flow->reorder_buffer = rtp_get_ts(VLC_TICK_FROM_MS(p_sys->flow->reorder_buffer));

    p_sys->p_fifo = block_FifoNew();
    if( unlikely(p_sys->p_fifo == ((void*)0)) )
        goto failed;


    if (vlc_clone(&p_sys->thread, rist_thread, p_access, VLC_THREAD_PRIORITY_INPUT))
    {
        msg_Err(p_access, "Failed to create worker thread.");
        goto failed;
    }

    p_access->pf_block = BlockRIST;
    p_access->pf_control = Control;

    return VLC_SUCCESS;

failed:
    Clean( p_access );
    return VLC_EGENERIC;
}

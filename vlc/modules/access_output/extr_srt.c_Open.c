
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {int pf_control; int pf_write; TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_8__ {int i_poll_id; int sock; int lock; } ;
typedef TYPE_2__ sout_access_out_sys_t ;


 int Control ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_VAR_INTEGER ;
 int VLC_VAR_STRING ;
 int Write ;
 int msg_Err (TYPE_1__*,char*,...) ;
 int srt_close (int) ;
 int srt_epoll_create () ;
 int srt_epoll_release (int) ;
 int srt_getlasterror_str () ;
 int srt_schedule_reconnect (TYPE_1__*) ;
 int srt_startup () ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ var_Create (TYPE_1__*,char*,int ) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;
 TYPE_2__* vlc_obj_calloc (int *,int,int) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    sout_access_out_t *p_access = (sout_access_out_t*)p_this;
    sout_access_out_sys_t *p_sys = ((void*)0);

    if (var_Create ( p_access, "dst-port", VLC_VAR_INTEGER )
     || var_Create ( p_access, "src-port", VLC_VAR_INTEGER )
     || var_Create ( p_access, "dst-addr", VLC_VAR_STRING )
     || var_Create ( p_access, "src-addr", VLC_VAR_STRING ) )
    {
         msg_Err( p_access, "Valid network information is required." );
        return VLC_ENOMEM;
    }

    p_sys = vlc_obj_calloc( p_this, 1, sizeof( *p_sys ) );
    if( unlikely( p_sys == ((void*)0) ) )
        return VLC_ENOMEM;

    srt_startup();

    vlc_mutex_init( &p_sys->lock );

    p_access->p_sys = p_sys;

    p_sys->i_poll_id = srt_epoll_create();
    if ( p_sys->i_poll_id == -1 )
    {
        msg_Err( p_access, "Failed to create poll id for SRT socket (reason: %s)",
                 srt_getlasterror_str() );

        goto failed;
    }

    if ( !srt_schedule_reconnect( p_access ) )
    {
        msg_Err( p_access, "Failed to schedule connect");

        goto failed;
    }

    p_access->pf_write = Write;
    p_access->pf_control = Control;

    return VLC_SUCCESS;

failed:
    vlc_mutex_destroy( &p_sys->lock );

    if ( p_sys->sock != -1 ) srt_close( p_sys->sock );
    if ( p_sys->i_poll_id != -1 ) srt_epoll_release( p_sys->i_poll_id );

    return VLC_EGENERIC;
}

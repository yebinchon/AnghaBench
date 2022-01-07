
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int users; int input_state_changed; int i_id; int lock_manage; int lock; int wait_manage; int thread; int * p_vod; int schedule; int i_schedule; int media; int i_media; } ;
typedef TYPE_1__ vlm_t ;
typedef int vlm_message_t ;
typedef int vlc_object_t ;
typedef int libvlc_int_t ;
struct TYPE_10__ {TYPE_1__* p_vlm; } ;


 int Manage ;
 int TAB_INIT (int ,int ) ;
 int UINT_MAX ;
 int * VLC_OBJECT (int *) ;
 int VLC_THREAD_PRIORITY_LOW ;
 int VLC_VAR_ADDRESS ;
 int asprintf (char**,char*,char const*) ;
 int free (char*) ;
 TYPE_8__* libvlc_priv (int *) ;
 scalar_t__ likely (int) ;
 int msg_Dbg (int *,char*,...) ;
 int msg_Warn (int *,char*) ;
 int var_Create (TYPE_1__*,char*,int ) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_1__*,int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_init_daytime (int *) ;
 TYPE_1__* vlc_custom_create (int *,int,char*) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_object_delete (TYPE_1__*) ;
 scalar_t__ vlm_ExecuteCommand (TYPE_1__*,char*,int **) ;
 int vlm_MessageDelete (int *) ;
 int vlm_mutex ;

vlm_t *vlm_New( libvlc_int_t *libvlc, const char *psz_vlmconf )
{
    vlm_t *p_vlm = ((void*)0), **pp_vlm = &(libvlc_priv(libvlc)->p_vlm);
    vlc_object_t *p_this = VLC_OBJECT(libvlc);


    vlc_mutex_lock( &vlm_mutex );

    p_vlm = *pp_vlm;
    if( p_vlm )
    {
        if( likely( p_vlm->users < UINT_MAX ) )
            p_vlm->users++;
        else
            p_vlm = ((void*)0);
        vlc_mutex_unlock( &vlm_mutex );
        return p_vlm;
    }

    msg_Dbg( p_this, "creating VLM" );

    p_vlm = vlc_custom_create( p_this, sizeof( *p_vlm ), "vlm daemon" );
    if( !p_vlm )
    {
        vlc_mutex_unlock( &vlm_mutex );
        return ((void*)0);
    }

    vlc_mutex_init( &p_vlm->lock );
    vlc_mutex_init( &p_vlm->lock_manage );
    vlc_cond_init_daytime( &p_vlm->wait_manage );
    p_vlm->users = 1;
    p_vlm->input_state_changed = 0;
    p_vlm->i_id = 1;
    TAB_INIT( p_vlm->i_media, p_vlm->media );
    TAB_INIT( p_vlm->i_schedule, p_vlm->schedule );
    p_vlm->p_vod = ((void*)0);
    var_Create( p_vlm, "intf-event", VLC_VAR_ADDRESS );

    if( vlc_clone( &p_vlm->thread, Manage, p_vlm, VLC_THREAD_PRIORITY_LOW ) )
    {
        vlc_cond_destroy( &p_vlm->wait_manage );
        vlc_mutex_destroy( &p_vlm->lock );
        vlc_mutex_destroy( &p_vlm->lock_manage );
        vlc_object_delete(p_vlm);
        vlc_mutex_unlock( &vlm_mutex );
        return ((void*)0);
    }

    *pp_vlm = p_vlm;

    vlc_mutex_unlock( &vlm_mutex );


    if( psz_vlmconf != ((void*)0) )
    {
        vlm_message_t *p_message = ((void*)0);
        char *psz_buffer = ((void*)0);

        msg_Dbg( p_this, "loading VLM configuration" );
        if( asprintf(&psz_buffer, "load %s", psz_vlmconf ) != -1 )
        {
            msg_Dbg( p_this, "%s", psz_buffer );
            if( vlm_ExecuteCommand( p_vlm, psz_buffer, &p_message ) )
                msg_Warn( p_this, "error while loading the configuration file" );

            vlm_MessageDelete( p_message );
            free( psz_buffer );
        }
    }

    return p_vlm;
}

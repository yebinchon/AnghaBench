
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int input_state_changed; int i_media; int i_schedule; int lock; TYPE_3__** schedule; TYPE_5__** media; int lock_manage; int wait_manage; } ;
typedef TYPE_4__ vlm_t ;
typedef int vlm_message_t ;
struct TYPE_9__ {scalar_t__ b_loop; } ;
struct TYPE_10__ {int i_input; int id; scalar_t__ b_vod; TYPE_1__ broadcast; } ;
struct TYPE_13__ {int i_instance; TYPE_2__ cfg; TYPE_6__** instance; } ;
typedef TYPE_5__ vlm_media_sys_t ;
struct TYPE_14__ {int i_index; int player; int psz_name; } ;
typedef TYPE_6__ vlm_media_instance_sys_t ;
typedef scalar_t__ time_t ;
struct TYPE_11__ {scalar_t__ date; scalar_t__ period; int i_repeat; int i_command; int * command; scalar_t__ b_enabled; } ;


 int ExecuteCommand (TYPE_4__*,char*,int **) ;
 int TAB_APPEND (int,char**,int ) ;
 int TAB_REMOVE (int,char**,char*) ;
 int VLM_START_MEDIA_BROADCAST_INSTANCE ;
 int VLM_STOP_MEDIA_INSTANCE ;
 int free (char*) ;
 int mutex_cleanup_push (int *) ;
 int strdup (int ) ;
 int time (scalar_t__*) ;
 int vlc_cleanup_pop () ;
 scalar_t__ vlc_cond_timedwait_daytime (int *,int *,scalar_t__) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_player_IsStarted (int ) ;
 int vlc_player_Lock (int ) ;
 int vlc_player_Unlock (int ) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vlm_ControlInternal (TYPE_4__*,int ,int ,int ,...) ;
 int vlm_MessageDelete (int *) ;

__attribute__((used)) static void* Manage( void* p_object )
{
    vlm_t *vlm = (vlm_t*)p_object;
    time_t lastcheck, now, nextschedule = 0;

    time(&lastcheck);

    for( ;; )
    {
        char **ppsz_scheduled_commands = ((void*)0);
        int i_scheduled_commands = 0;
        bool scheduled_command = 0;

        vlc_mutex_lock( &vlm->lock_manage );
        mutex_cleanup_push( &vlm->lock_manage );
        while( !vlm->input_state_changed && !scheduled_command )
        {
            if( nextschedule != 0 )
                scheduled_command = vlc_cond_timedwait_daytime( &vlm->wait_manage, &vlm->lock_manage, nextschedule ) != 0;
            else
                vlc_cond_wait( &vlm->wait_manage, &vlm->lock_manage );
        }
        vlm->input_state_changed = 0;
        vlc_cleanup_pop( );
        vlc_mutex_unlock( &vlm->lock_manage );

        int canc = vlc_savecancel ();

        vlc_mutex_lock( &vlm->lock );
        for( int i = 0; i < vlm->i_media; i++ )
        {
            vlm_media_sys_t *p_media = vlm->media[i];

            for( int j = 0; j < p_media->i_instance; )
            {
                vlm_media_instance_sys_t *p_instance = p_media->instance[j];

                vlc_player_Lock(p_instance->player);
                if (!vlc_player_IsStarted(p_instance->player))
                {
                    vlc_player_Unlock(p_instance->player);
                    int i_new_input_index;


                    i_new_input_index = p_instance->i_index + 1;
                    if( !p_media->cfg.b_vod && p_media->cfg.broadcast.b_loop && i_new_input_index >= p_media->cfg.i_input )
                        i_new_input_index = 0;


                    if( p_media->cfg.b_vod || i_new_input_index >= p_media->cfg.i_input )
                        vlm_ControlInternal( vlm, VLM_STOP_MEDIA_INSTANCE, p_media->cfg.id, p_instance->psz_name );
                    else
                        vlm_ControlInternal( vlm, VLM_START_MEDIA_BROADCAST_INSTANCE, p_media->cfg.id, p_instance->psz_name, i_new_input_index );

                    j = 0;
                }
                else
                {
                    vlc_player_Unlock(p_instance->player);
                    j++;
                }
            }
        }


        time(&now);
        nextschedule = 0;

        for( int i = 0; i < vlm->i_schedule; i++ )
        {
            time_t real_date = vlm->schedule[i]->date;

            if( vlm->schedule[i]->b_enabled )
            {
                bool b_now = 0;
                if( vlm->schedule[i]->date == 0 )
                {
                    vlm->schedule[i]->date = now;
                    real_date = now;
                    b_now = 1;
                }
                else if( vlm->schedule[i]->period != 0 )
                {
                    int j = 0;
                    while( ((vlm->schedule[i]->date + j *
                             vlm->schedule[i]->period) <= lastcheck) &&
                           ( vlm->schedule[i]->i_repeat > j ||
                             vlm->schedule[i]->i_repeat < 0 ) )
                    {
                        j++;
                    }

                    real_date = vlm->schedule[i]->date + j *
                        vlm->schedule[i]->period;
                }

                if( real_date <= now )
                {
                    if( real_date > lastcheck || b_now )
                    {
                        for( int j = 0; j < vlm->schedule[i]->i_command; j++ )
                        {
                            TAB_APPEND( i_scheduled_commands,
                                        ppsz_scheduled_commands,
                                        strdup(vlm->schedule[i]->command[j] ) );
                        }
                    }
                }
                else if( nextschedule == 0 || real_date < nextschedule )
                {
                    nextschedule = real_date;
                }
            }
        }

        while( i_scheduled_commands )
        {
            vlm_message_t *message = ((void*)0);
            char *psz_command = ppsz_scheduled_commands[0];
            ExecuteCommand( vlm, psz_command,&message );


            vlm_MessageDelete( message );
            TAB_REMOVE( i_scheduled_commands,
                        ppsz_scheduled_commands,
                        psz_command );
            free( psz_command );
        }

        lastcheck = now;
        vlc_mutex_unlock( &vlm->lock );
        vlc_restorecancel (canc);
    }

    return ((void*)0);
}

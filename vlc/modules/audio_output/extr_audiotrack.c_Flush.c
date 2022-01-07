
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* sys; } ;
typedef TYPE_3__ audio_output_t ;
struct TYPE_9__ {scalar_t__ i_write; scalar_t__ i_read; } ;
struct TYPE_12__ {int b_error; scalar_t__ i_samples_written; int lock; TYPE_1__ circular; } ;
typedef TYPE_4__ aout_sys_t ;
struct TYPE_10__ {int clazz; } ;
struct TYPE_13__ {TYPE_2__ AudioTimestamp; } ;
typedef int JNIEnv ;


 scalar_t__ AudioTrack_Recreate (int *,TYPE_3__*) ;
 int AudioTrack_Reset (int *,TYPE_3__*) ;
 scalar_t__ CHECK_AT_EXCEPTION (char*) ;
 int * GET_ENV () ;
 int JNI_AT_CALL_VOID (int ) ;
 int flush ;
 TYPE_5__ jfields ;
 int pause ;
 int play ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void
Flush( audio_output_t *p_aout )
{
    aout_sys_t *p_sys = p_aout->sys;
    JNIEnv *env;

    vlc_mutex_lock( &p_sys->lock );

    if( p_sys->b_error || !( env = GET_ENV() ) )
        goto bailout;
    JNI_AT_CALL_VOID( pause );
    if( CHECK_AT_EXCEPTION( "pause" ) )
        goto bailout;
    JNI_AT_CALL_VOID( flush );
    p_sys->circular.i_read = p_sys->circular.i_write = 0;







    if( !jfields.AudioTimestamp.clazz && p_sys->i_samples_written > 0 )
    {
        if( AudioTrack_Recreate( env, p_aout ) != 0 )
        {
            p_sys->b_error = 1;
            goto bailout;
        }
    }
    AudioTrack_Reset( env, p_aout );
    JNI_AT_CALL_VOID( play );
    CHECK_AT_EXCEPTION( "play" );

bailout:
    vlc_mutex_unlock( &p_sys->lock );
}

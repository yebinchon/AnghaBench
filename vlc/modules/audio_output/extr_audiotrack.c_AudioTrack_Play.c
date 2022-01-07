
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {TYPE_4__* sys; } ;
typedef TYPE_3__ audio_output_t ;
struct TYPE_19__ {int i_write_type; int b_error; int i_samples_written; } ;
typedef TYPE_4__ aout_sys_t ;
struct TYPE_17__ {int ERROR_INVALID_OPERATION; int ERROR_BAD_VALUE; } ;
struct TYPE_16__ {int ERROR_DEAD_OBJECT; scalar_t__ has_ERROR_DEAD_OBJECT; } ;
struct TYPE_20__ {TYPE_2__ AudioTrack; TYPE_1__ AudioManager; } ;
typedef int JNIEnv ;


 int AudioTrack_PlayByteArray (int *,TYPE_3__*,size_t,size_t,int) ;
 int AudioTrack_PlayByteArrayV23 (int *,TYPE_3__*,size_t,size_t) ;
 int AudioTrack_PlayByteBuffer (int *,TYPE_3__*,size_t,size_t) ;
 int AudioTrack_PlayFloatArray (int *,TYPE_3__*,size_t,size_t) ;
 int AudioTrack_PlayShortArrayV23 (int *,TYPE_3__*,size_t,size_t) ;
 int AudioTrack_Recreate (int *,TYPE_3__*) ;
 int AudioTrack_Reset (int *,TYPE_3__*) ;
 scalar_t__ BYTES_TO_FRAMES (int) ;
 int CHECK_AT_EXCEPTION (char*) ;
 int JNI_AT_CALL_VOID (int ) ;





 TYPE_7__ jfields ;
 int msg_Err (TYPE_3__*,char*,char const*) ;
 int msg_Warn (TYPE_3__*,char*) ;
 int play ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static int
AudioTrack_Play( JNIEnv *env, audio_output_t *p_aout, size_t i_data_size,
                 size_t i_data_offset, bool b_force )
{
    aout_sys_t *p_sys = p_aout->sys;
    int i_ret;

    switch( p_sys->i_write_type )
    {
    case 131:
        i_ret = AudioTrack_PlayByteArrayV23( env, p_aout, i_data_size,
                                             i_data_offset );
        break;
    case 130:
        i_ret = AudioTrack_PlayByteBuffer( env, p_aout, i_data_size,
                                           i_data_offset );
        break;
    case 128:
        i_ret = AudioTrack_PlayShortArrayV23( env, p_aout, i_data_size,
                                              i_data_offset );
        break;
    case 132:
        i_ret = AudioTrack_PlayByteArray( env, p_aout, i_data_size,
                                          i_data_offset, b_force );
        break;
    case 129:
        i_ret = AudioTrack_PlayFloatArray( env, p_aout, i_data_size,
                                           i_data_offset );
        break;
    default:
        vlc_assert_unreachable();
    }

    if( i_ret < 0 ) {
        if( jfields.AudioManager.has_ERROR_DEAD_OBJECT
            && i_ret == jfields.AudioManager.ERROR_DEAD_OBJECT )
        {
            msg_Warn( p_aout, "ERROR_DEAD_OBJECT: "
                              "try recreating AudioTrack" );
            if( ( i_ret = AudioTrack_Recreate( env, p_aout ) ) == 0 )
            {
                AudioTrack_Reset( env, p_aout );
                JNI_AT_CALL_VOID( play );
                CHECK_AT_EXCEPTION( "play" );
            }
        } else
        {
            const char *str;
            if( i_ret == jfields.AudioTrack.ERROR_INVALID_OPERATION )
                str = "ERROR_INVALID_OPERATION";
            else if( i_ret == jfields.AudioTrack.ERROR_BAD_VALUE )
                str = "ERROR_BAD_VALUE";
            else
                str = "ERROR";
            msg_Err( p_aout, "Write failed: %s", str );
            p_sys->b_error = 1;
        }
    } else
        p_sys->i_samples_written += BYTES_TO_FRAMES( i_ret );
    return i_ret;
}

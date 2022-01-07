
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {TYPE_6__* sys; } ;
typedef TYPE_5__ audio_output_t ;
struct TYPE_16__ {int * p_data; } ;
struct TYPE_17__ {TYPE_2__ bytebuffer; int * p_floatarray; int * p_shortarray; int * p_bytearray; } ;
struct TYPE_18__ {TYPE_3__ u; } ;
struct TYPE_15__ {int * p_obj; } ;
struct TYPE_20__ {int b_thread_running; int b_audiotrack_exception; int i_write_type; int b_error; int b_passthrough; TYPE_4__ circular; TYPE_1__ timestamp; int * p_audiotrack; int lock; int thread; int thread_cond; } ;
typedef TYPE_6__ aout_sys_t ;
struct TYPE_21__ {int (* DeleteGlobalRef ) (TYPE_7__**,int *) ;} ;
typedef TYPE_7__* JNIEnv ;


 int CHECK_AT_EXCEPTION (char*) ;
 TYPE_7__** GET_ENV () ;
 int JNI_AT_CALL_VOID (int ) ;





 int free (int *) ;
 int release ;
 int stop ;
 int stub1 (TYPE_7__**,int *) ;
 int stub2 (TYPE_7__**,int *) ;
 int stub3 (TYPE_7__**,int *) ;
 int stub4 (TYPE_7__**,int *) ;
 int stub5 (TYPE_7__**,int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void
Stop( audio_output_t *p_aout )
{
    aout_sys_t *p_sys = p_aout->sys;
    JNIEnv *env;

    if( !( env = GET_ENV() ) )
        return;


    vlc_mutex_lock( &p_sys->lock );
    if( p_sys->b_thread_running )
    {
        p_sys->b_thread_running = 0;
        vlc_cond_signal( &p_sys->thread_cond );
        vlc_mutex_unlock( &p_sys->lock );
        vlc_join( p_sys->thread, ((void*)0) );
    }
    else
        vlc_mutex_unlock( &p_sys->lock );


    if( p_sys->p_audiotrack )
    {
        if( !p_sys->b_audiotrack_exception )
        {
            JNI_AT_CALL_VOID( stop );
            if( !CHECK_AT_EXCEPTION( "stop" ) )
                JNI_AT_CALL_VOID( release );
        }
        (*env)->DeleteGlobalRef( env, p_sys->p_audiotrack );
        p_sys->p_audiotrack = ((void*)0);
    }


    if( p_sys->timestamp.p_obj )
    {
        (*env)->DeleteGlobalRef( env, p_sys->timestamp.p_obj );
        p_sys->timestamp.p_obj = ((void*)0);
    }


    switch( p_sys->i_write_type )
    {
    case 132:
    case 131:
        if( p_sys->circular.u.p_bytearray )
        {
            (*env)->DeleteGlobalRef( env, p_sys->circular.u.p_bytearray );
            p_sys->circular.u.p_bytearray = ((void*)0);
        }
        break;
    case 128:
        if( p_sys->circular.u.p_shortarray )
        {
            (*env)->DeleteGlobalRef( env, p_sys->circular.u.p_shortarray );
            p_sys->circular.u.p_shortarray = ((void*)0);
        }
        break;
    case 129:
        if( p_sys->circular.u.p_floatarray )
        {
            (*env)->DeleteGlobalRef( env, p_sys->circular.u.p_floatarray );
            p_sys->circular.u.p_floatarray = ((void*)0);
        }
        break;
    case 130:
        free( p_sys->circular.u.bytebuffer.p_data );
        p_sys->circular.u.bytebuffer.p_data = ((void*)0);
        break;
    }

    p_sys->b_audiotrack_exception = 0;
    p_sys->b_error = 0;
    p_sys->b_passthrough = 0;
}

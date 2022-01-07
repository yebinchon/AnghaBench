
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


struct TYPE_20__ {TYPE_6__* sys; } ;
typedef TYPE_5__ audio_output_t ;
struct TYPE_16__ {scalar_t__ p_obj; int p_data; } ;
struct TYPE_17__ {TYPE_1__ bytebuffer; } ;
struct TYPE_18__ {TYPE_2__ u; int i_size; } ;
struct TYPE_21__ {TYPE_3__ circular; } ;
typedef TYPE_6__ aout_sys_t ;
struct TYPE_22__ {int (* ExceptionClear ) (TYPE_7__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_7__**) ;scalar_t__ (* NewDirectByteBuffer ) (TYPE_7__**,int ,int ) ;int (* DeleteLocalRef ) (TYPE_7__**,scalar_t__) ;} ;
struct TYPE_19__ {int ERROR; int WRITE_NON_BLOCKING; } ;
struct TYPE_15__ {TYPE_4__ AudioTrack; } ;
typedef TYPE_7__* JNIEnv ;


 int JNI_AT_CALL_INT (int ,scalar_t__,size_t,int ) ;
 TYPE_12__ jfields ;
 int stub1 (TYPE_7__**,scalar_t__) ;
 scalar_t__ stub2 (TYPE_7__**,int ,int ) ;
 scalar_t__ stub3 (TYPE_7__**) ;
 int stub4 (TYPE_7__**) ;
 int writeBufferV21 ;

__attribute__((used)) static int
AudioTrack_PlayByteBuffer( JNIEnv *env, audio_output_t *p_aout,
                           size_t i_data_size, size_t i_data_offset )
{
    aout_sys_t *p_sys = p_aout->sys;




    if( i_data_offset == 0 )
    {


        if( p_sys->circular.u.bytebuffer.p_obj )
            (*env)->DeleteLocalRef( env, p_sys->circular.u.bytebuffer.p_obj );

        p_sys->circular.u.bytebuffer.p_obj = (*env)->NewDirectByteBuffer( env,
                                            p_sys->circular.u.bytebuffer.p_data,
                                            p_sys->circular.i_size );
        if( !p_sys->circular.u.bytebuffer.p_obj )
        {
            if( (*env)->ExceptionCheck( env ) )
                (*env)->ExceptionClear( env );
            return jfields.AudioTrack.ERROR;
        }
    }

    return JNI_AT_CALL_INT( writeBufferV21, p_sys->circular.u.bytebuffer.p_obj,
                            i_data_size,
                            jfields.AudioTrack.WRITE_NON_BLOCKING );
}

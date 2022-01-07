
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_5__* sys; } ;
typedef TYPE_4__ audio_output_t ;
struct TYPE_8__ {int p_bytearray; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
struct TYPE_12__ {TYPE_2__ circular; } ;
typedef TYPE_5__ aout_sys_t ;
struct TYPE_10__ {int WRITE_NON_BLOCKING; } ;
struct TYPE_13__ {TYPE_3__ AudioTrack; } ;
typedef int JNIEnv ;


 int JNI_AT_CALL_INT (int ,int ,size_t,size_t,int ) ;
 TYPE_6__ jfields ;
 int writeV23 ;

__attribute__((used)) static int
AudioTrack_PlayByteArrayV23( JNIEnv *env, audio_output_t *p_aout,
                             size_t i_data_size, size_t i_data_offset )
{
    aout_sys_t *p_sys = p_aout->sys;

    return JNI_AT_CALL_INT( writeV23, p_sys->circular.u.p_bytearray,
                            i_data_offset, i_data_size,
                            jfields.AudioTrack.WRITE_NON_BLOCKING );
}

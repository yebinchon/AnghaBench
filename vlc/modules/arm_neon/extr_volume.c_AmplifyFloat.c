
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_1__ block_t ;
typedef int audio_volume_t ;


 int amplify_float_arm_neon (float*,float*,size_t,float) ;
 int assert (int) ;
 scalar_t__ unlikely (size_t) ;

__attribute__((used)) static void AmplifyFloat(audio_volume_t *volume, block_t *block, float amp)
{
    float *buf = (float *)block->p_buffer;
    size_t length = block->i_buffer;

    if (amp == 1.0)
        return;


    assert(((uintptr_t)buf & 3) == 0);
    while (unlikely((uintptr_t)buf & 12))
    {
        *(buf++) *= amp;
        length -= 4;
    }

    assert((length & 3) == 0);
    while (unlikely(length & 12))
    {
        length -= 4;
        buf[length / 4] *= amp;
    }

    amplify_float_arm_neon(buf, buf, length, amp);
    (void) volume;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_8__ {unsigned int i_channels; } ;
struct TYPE_7__ {TYPE_2__ audio; } ;
struct TYPE_9__ {TYPE_1__ fmt_in; TYPE_4__* p_sys; } ;
typedef TYPE_3__ encoder_t ;
struct TYPE_10__ {unsigned int i_nb_samples; scalar_t__ p_buffer; } ;
typedef TYPE_4__ encoder_sys_t ;


 unsigned int ARRAY_SIZE (scalar_t__) ;
 int memcpy (scalar_t__,int *,unsigned int) ;
 int msg_Err (TYPE_3__*,char*) ;

__attribute__((used)) static void Bufferize( encoder_t *p_enc, int16_t *p_in, int i_nb_samples )
{
    encoder_sys_t *p_sys = p_enc->p_sys;
    const unsigned i_offset = p_sys->i_nb_samples * p_enc->fmt_in.audio.i_channels;
    const unsigned i_len = ARRAY_SIZE(p_sys->p_buffer);

    if( i_offset >= i_len )
    {
        msg_Err( p_enc, "buffer full" );
        return;
    }

    unsigned i_copy = i_nb_samples * p_enc->fmt_in.audio.i_channels;
    if( i_copy + i_offset > i_len)
    {
        msg_Err( p_enc, "dropping samples" );
        i_copy = i_len - i_offset;
    }

    memcpy( p_sys->p_buffer + i_offset, p_in, i_copy * sizeof(int16_t) );
}

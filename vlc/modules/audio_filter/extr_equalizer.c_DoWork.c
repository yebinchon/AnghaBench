
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int audio; } ;
struct TYPE_9__ {TYPE_1__ fmt_in; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_10__ {int i_nb_samples; scalar_t__ p_buffer; } ;
typedef TYPE_3__ block_t ;


 int EqzFilter (TYPE_2__*,float*,float*,int ,int ) ;
 int aout_FormatNbChannels (int *) ;

__attribute__((used)) static block_t * DoWork( filter_t * p_filter, block_t * p_in_buf )
{
    EqzFilter( p_filter, (float*)p_in_buf->p_buffer,
               (float*)p_in_buf->p_buffer, p_in_buf->i_nb_samples,
               aout_FormatNbChannels( &p_filter->fmt_in.audio ) );
    return p_in_buf;
}

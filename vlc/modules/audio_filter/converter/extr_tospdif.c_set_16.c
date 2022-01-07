
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ i_format; } ;
struct TYPE_6__ {TYPE_1__ audio; } ;
struct TYPE_7__ {TYPE_2__ fmt_out; } ;
typedef TYPE_3__ filter_t ;


 int SetWBE (void*,int ) ;
 int SetWLE (void*,int ) ;
 scalar_t__ VLC_CODEC_SPDIFB ;

__attribute__((used)) static void set_16( filter_t *p_filter, void *p_buf, uint16_t i_val )
{
    if( p_filter->fmt_out.audio.i_format == VLC_CODEC_SPDIFB )
        SetWBE( p_buf, i_val );
    else
        SetWLE( p_buf, i_val );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
struct TYPE_5__ {int i_chroma; } ;
struct TYPE_6__ {TYPE_1__ video; } ;
struct TYPE_7__ {TYPE_2__ fmt_out; } ;
typedef TYPE_3__ filter_t ;
 int const* pi_allowed_chromas_yuv ;
 int const* pi_allowed_chromas_yuv10 ;

__attribute__((used)) static const vlc_fourcc_t *get_allowed_chromas( filter_t *p_filter )
{
    switch (p_filter->fmt_out.video.i_chroma)
    {
        case 130:
        case 131:
        case 129:
        case 134:
        case 132:
        case 133:
        case 128:
            return pi_allowed_chromas_yuv10;
        default:
            return pi_allowed_chromas_yuv;
    }
}

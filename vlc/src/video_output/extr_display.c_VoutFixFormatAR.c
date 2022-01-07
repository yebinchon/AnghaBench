
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_sar_num; int i_sar_den; } ;
typedef TYPE_1__ video_format_t ;


 int vlc_ureduce (int*,int*,int,int,int) ;

void VoutFixFormatAR(video_format_t *fmt)
{
    vlc_ureduce( &fmt->i_sar_num, &fmt->i_sar_den,
                 fmt->i_sar_num, fmt->i_sar_den, 50000 );
    if (fmt->i_sar_num <= 0 || fmt->i_sar_den <= 0) {
        fmt->i_sar_num = 1;
        fmt->i_sar_den = 1;
    }
}

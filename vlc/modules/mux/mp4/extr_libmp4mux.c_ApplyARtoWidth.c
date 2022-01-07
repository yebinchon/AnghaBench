
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_sar_num; int i_sar_den; int i_visible_width; } ;
typedef TYPE_1__ video_format_t ;
typedef int int64_t ;



__attribute__((used)) static unsigned ApplyARtoWidth(const video_format_t *vfmt)
{
    if (vfmt->i_sar_num > 0 && vfmt->i_sar_den > 0)
    {
        return (int64_t)vfmt->i_sar_num *
               (int64_t)vfmt->i_visible_width / vfmt->i_sar_den;
    }
    else return vfmt->i_visible_width;
}

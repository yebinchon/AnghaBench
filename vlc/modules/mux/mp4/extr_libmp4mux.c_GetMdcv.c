
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int min_luminance; int max_luminance; int * white_point; int * primaries; } ;
struct TYPE_5__ {TYPE_1__ mastering; } ;
typedef TYPE_2__ video_format_t ;
typedef int bo_t ;


 int bo_add_16be (int *,int ) ;
 int bo_add_32be (int *,int ) ;
 int * box_new (char*) ;

__attribute__((used)) static bo_t *GetMdcv(const video_format_t *p_vfmt)
{
    if(!p_vfmt->mastering.max_luminance)
        return ((void*)0);
    bo_t *p_box = box_new("mdcv");
    if(p_box)
    {
        for(int i=0; i<6; i++)
            bo_add_16be(p_box, p_vfmt->mastering.primaries[i]);
        bo_add_16be(p_box, p_vfmt->mastering.white_point[0]);
        bo_add_16be(p_box, p_vfmt->mastering.white_point[1]);
        bo_add_32be(p_box, p_vfmt->mastering.max_luminance);
        bo_add_32be(p_box, p_vfmt->mastering.min_luminance);
    }
    return p_box;
}

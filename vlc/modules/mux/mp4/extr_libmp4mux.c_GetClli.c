
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int MaxFALL; int MaxCLL; } ;
struct TYPE_5__ {TYPE_1__ lighting; } ;
typedef TYPE_2__ video_format_t ;
typedef int bo_t ;


 int bo_add_16be (int *,int ) ;
 int * box_new (char*) ;

__attribute__((used)) static bo_t *GetClli(const video_format_t *p_vfmt)
{
    if(!p_vfmt->lighting.MaxFALL)
        return ((void*)0);
    bo_t *p_box = box_new("clli");
    if(p_box)
    {
        bo_add_16be(p_box, p_vfmt->lighting.MaxCLL);
        bo_add_16be(p_box, p_vfmt->lighting.MaxFALL);
    }
    return p_box;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pf_release_ts; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;
typedef TYPE_2__ picture_sys_t ;



__attribute__((used)) static inline bool
AndroidOpaquePicture_CanReleaseAtTime(picture_sys_t *p_picsys)
{
    return p_picsys->hw.pf_release_ts != ((void*)0);
}

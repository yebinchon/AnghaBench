
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_sys; } ;
typedef TYPE_1__ picture_t ;
typedef int picture_sys_t ;


 int AndroidOpaquePicture_Release (int *,int) ;

__attribute__((used)) static void
pool_unlock_pic(picture_t *p_pic)
{
    picture_sys_t *p_picsys = p_pic->p_sys;

    AndroidOpaquePicture_Release(p_picsys, 0);
}

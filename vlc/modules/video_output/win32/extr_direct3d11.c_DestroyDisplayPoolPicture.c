
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_sys; } ;
typedef TYPE_1__ picture_t ;
typedef int picture_sys_d3d11_t ;


 int ReleaseD3D11PictureSys (int *) ;
 int free (int *) ;

__attribute__((used)) static void DestroyDisplayPoolPicture(picture_t *picture)
{
    picture_sys_d3d11_t *p_sys = picture->p_sys;
    ReleaseD3D11PictureSys( p_sys );
    free(p_sys);
}

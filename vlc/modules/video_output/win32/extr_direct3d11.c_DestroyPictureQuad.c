
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ picture_t ;
typedef int d3d_quad_t ;


 int D3D11_ReleaseQuad (int *) ;

__attribute__((used)) static void DestroyPictureQuad(picture_t *p_picture)
{
    D3D11_ReleaseQuad( (d3d_quad_t *) p_picture->p_sys );
}

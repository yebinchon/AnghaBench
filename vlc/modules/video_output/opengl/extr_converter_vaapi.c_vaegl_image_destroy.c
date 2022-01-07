
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* gl; } ;
typedef TYPE_2__ opengl_tex_converter_t ;
struct TYPE_5__ {int (* destroyImageKHR ) (TYPE_4__*,int ) ;} ;
struct TYPE_7__ {TYPE_1__ egl; } ;
typedef int EGLImageKHR ;


 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static void
vaegl_image_destroy(const opengl_tex_converter_t *tc, EGLImageKHR image)
{
    tc->gl->egl.destroyImageKHR(tc->gl, image);
}

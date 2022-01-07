
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* gl; } ;
typedef TYPE_2__ opengl_tex_converter_t ;
struct TYPE_5__ {int (* createImageKHR ) (TYPE_4__*,int ,int *,int *) ;} ;
struct TYPE_7__ {TYPE_1__ egl; } ;
typedef int EGLint ;
typedef int EGLImageKHR ;


 int EGL_DMA_BUF_PLANE0_FD_EXT ;
 int EGL_DMA_BUF_PLANE0_OFFSET_EXT ;
 int EGL_DMA_BUF_PLANE0_PITCH_EXT ;
 int EGL_HEIGHT ;
 int EGL_LINUX_DMA_BUF_EXT ;
 int EGL_LINUX_DRM_FOURCC_EXT ;
 int EGL_NONE ;
 int EGL_WIDTH ;
 int stub1 (TYPE_4__*,int ,int *,int *) ;

__attribute__((used)) static EGLImageKHR
vaegl_image_create(const opengl_tex_converter_t *tc, EGLint w, EGLint h,
                   EGLint fourcc, EGLint fd, EGLint offset, EGLint pitch)
{
    EGLint attribs[] = {
        EGL_WIDTH, w,
        EGL_HEIGHT, h,
        EGL_LINUX_DRM_FOURCC_EXT, fourcc,
        EGL_DMA_BUF_PLANE0_FD_EXT, fd,
        EGL_DMA_BUF_PLANE0_OFFSET_EXT, offset,
        EGL_DMA_BUF_PLANE0_PITCH_EXT, pitch,
        EGL_NONE
    };

    return tc->gl->egl.createImageKHR(tc->gl, EGL_LINUX_DMA_BUF_EXT, ((void*)0),
                                      attribs);
}

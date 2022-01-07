
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
typedef int video_color_space_t ;
struct TYPE_4__ {int (* pf_fragment_shader_init ) (TYPE_1__*,int ,int ,int ) ;} ;
typedef TYPE_1__ opengl_tex_converter_t ;
typedef int GLuint ;
typedef int GLenum ;


 int stub1 (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static inline GLuint
opengl_fragment_shader_init(opengl_tex_converter_t *tc, GLenum tex_target,
                            vlc_fourcc_t chroma, video_color_space_t yuv_space)
{
    return tc->pf_fragment_shader_init(tc, tex_target, chroma, yuv_space);
}

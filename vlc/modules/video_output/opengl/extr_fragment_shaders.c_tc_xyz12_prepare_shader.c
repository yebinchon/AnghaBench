
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * Texture; } ;
struct TYPE_7__ {TYPE_2__ uloc; TYPE_1__* vt; } ;
typedef TYPE_3__ opengl_tex_converter_t ;
struct TYPE_5__ {int (* Uniform1i ) (int ,int ) ;} ;
typedef int GLsizei ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void
tc_xyz12_prepare_shader(const opengl_tex_converter_t *tc,
                        const GLsizei *tex_width, const GLsizei *tex_height,
                        float alpha)
{
    (void) tex_width; (void) tex_height; (void) alpha;
    tc->vt->Uniform1i(tc->uloc.Texture[0], 0);
}

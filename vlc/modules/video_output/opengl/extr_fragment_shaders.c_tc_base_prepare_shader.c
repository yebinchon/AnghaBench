
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pl_var {scalar_t__ type; int dim_m; int dim_v; } ;
struct pl_shader_var {float* data; struct pl_var var; } ;
struct pl_shader_res {int num_variables; struct pl_shader_var* variables; } ;
struct TYPE_5__ {int FillColor; int* TexSize; int* pl_vars; int * Texture; int Coefficients; } ;
struct TYPE_7__ {unsigned int tex_count; scalar_t__ tex_target; TYPE_2__* vt; TYPE_1__ uloc; struct pl_shader_res* pl_sh_res; int yuv_coefficients; scalar_t__ yuv_color; } ;
typedef TYPE_3__ opengl_tex_converter_t ;
struct TYPE_6__ {int (* Uniform4f ) (int,float const,float const,float const,float const) ;int (* Uniform3f ) (int,float const,float const,float const) ;int (* Uniform2f ) (int,float const,float const) ;int (* Uniform1f ) (int,float const) ;int (* UniformMatrix2fv ) (int,int,int ,float const*) ;int (* UniformMatrix3fv ) (int,int,int ,float const*) ;int (* UniformMatrix4fv ) (int,int,int ,float const*) ;int (* Uniform1i ) (int ,unsigned int) ;int (* Uniform4fv ) (int ,int,int ) ;} ;
typedef float GLsizei ;
typedef int GLint ;


 int GL_FALSE ;
 scalar_t__ GL_TEXTURE_RECTANGLE ;
 scalar_t__ PL_VAR_FLOAT ;
 int stub1 (int ,int,int ) ;
 int stub10 (int,float const,float const,float const) ;
 int stub11 (int,float const,float const,float const,float const) ;
 int stub2 (int ,unsigned int) ;
 int stub3 (int,float,float,float,float) ;
 int stub4 (int,float const,float const) ;
 int stub5 (int,int,int ,float const*) ;
 int stub6 (int,int,int ,float const*) ;
 int stub7 (int,int,int ,float const*) ;
 int stub8 (int,float const) ;
 int stub9 (int,float const,float const) ;

__attribute__((used)) static void
tc_base_prepare_shader(const opengl_tex_converter_t *tc,
                       const GLsizei *tex_width, const GLsizei *tex_height,
                       float alpha)
{
    (void) tex_width; (void) tex_height;

    if (tc->yuv_color)
        tc->vt->Uniform4fv(tc->uloc.Coefficients, 4, tc->yuv_coefficients);

    for (unsigned i = 0; i < tc->tex_count; ++i)
        tc->vt->Uniform1i(tc->uloc.Texture[i], i);

    tc->vt->Uniform4f(tc->uloc.FillColor, 1.0f, 1.0f, 1.0f, alpha);

    if (tc->tex_target == GL_TEXTURE_RECTANGLE)
    {
        for (unsigned i = 0; i < tc->tex_count; ++i)
            tc->vt->Uniform2f(tc->uloc.TexSize[i], tex_width[i],
                               tex_height[i]);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* vt; } ;
typedef TYPE_2__ opengl_tex_converter_t ;
struct TYPE_4__ {int (* DeleteTextures ) (int,int *) ;int (* GetTexLevelParameteriv ) (int,int ,int,int*) ;int (* TexImage2D ) (int,int ,int,int,int,int ,int,int,int *) ;int (* BindTexture ) (int,int ) ;int (* GenTextures ) (int,int *) ;} ;
typedef int GLuint ;
typedef int GLint ;






 int GL_TEXTURE_LUMINANCE_SIZE ;
 int GL_TEXTURE_RED_SIZE ;
 int stub1 (int,int *) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ,int,int,int,int ,int,int,int *) ;
 int stub4 (int,int ,int,int*) ;
 int stub5 (int,int *) ;

__attribute__((used)) static int GetTexFormatSize(opengl_tex_converter_t *tc, int target,
                            int tex_format, int tex_internal, int tex_type)
{
    if (!tc->vt->GetTexLevelParameteriv)
        return -1;

    GLint tex_param_size;
    int mul = 1;
    switch (tex_format)
    {
        case 131:
            mul = 4;

        case 129:
        case 128:
            tex_param_size = GL_TEXTURE_RED_SIZE;
            break;
        case 130:
            tex_param_size = GL_TEXTURE_LUMINANCE_SIZE;
            break;
        default:
            return -1;
    }
    GLuint texture;

    tc->vt->GenTextures(1, &texture);
    tc->vt->BindTexture(target, texture);
    tc->vt->TexImage2D(target, 0, tex_internal, 64, 64, 0, tex_format, tex_type, ((void*)0));
    GLint size = 0;
    tc->vt->GetTexLevelParameteriv(target, 0, tex_param_size, &size);

    tc->vt->DeleteTextures(1, &texture);
    return size > 0 ? size * mul : size;
}

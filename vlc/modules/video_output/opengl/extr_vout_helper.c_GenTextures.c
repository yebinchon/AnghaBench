
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int tex_count; int (* pf_allocate_textures ) (TYPE_2__ const*,int *,int const*,int const*) ;TYPE_1__* vt; int tex_target; } ;
typedef TYPE_2__ opengl_tex_converter_t ;
struct TYPE_5__ {int (* DeleteTextures ) (unsigned int,int *) ;int (* TexParameteri ) (int ,int ,int ) ;int (* TexEnvf ) (int ,int ,int ) ;int (* TexParameterf ) (int ,int ,double) ;int (* BindTexture ) (int ,int ) ;int (* GenTextures ) (unsigned int,int *) ;} ;
typedef int GLuint ;
typedef int GLsizei ;


 int GL_CLAMP_TO_EDGE ;
 int GL_LINEAR ;
 int GL_MODULATE ;
 int GL_TEXTURE_ENV ;
 int GL_TEXTURE_ENV_MODE ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_PRIORITY ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int VLC_SUCCESS ;
 int memset (int *,int ,int) ;
 int stub1 (unsigned int,int *) ;
 int stub10 (unsigned int,int *) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ,double) ;
 int stub4 (int ,int ,int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ,int ,int ) ;
 int stub7 (int ,int ,int ) ;
 int stub8 (int ,int ,int ) ;
 int stub9 (TYPE_2__ const*,int *,int const*,int const*) ;

__attribute__((used)) static int
GenTextures(const opengl_tex_converter_t *tc,
            const GLsizei *tex_width, const GLsizei *tex_height,
            GLuint *textures)
{
    tc->vt->GenTextures(tc->tex_count, textures);

    for (unsigned i = 0; i < tc->tex_count; i++)
    {
        tc->vt->BindTexture(tc->tex_target, textures[i]);



        tc->vt->TexParameterf(tc->tex_target, GL_TEXTURE_PRIORITY, 1.0);
        tc->vt->TexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);


        tc->vt->TexParameteri(tc->tex_target, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        tc->vt->TexParameteri(tc->tex_target, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        tc->vt->TexParameteri(tc->tex_target, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
        tc->vt->TexParameteri(tc->tex_target, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    }

    if (tc->pf_allocate_textures != ((void*)0))
    {
        int ret = tc->pf_allocate_textures(tc, textures, tex_width, tex_height);
        if (ret != VLC_SUCCESS)
        {
            tc->vt->DeleteTextures(tc->tex_count, textures);
            memset(textures, 0, tc->tex_count * sizeof(GLuint));
            return ret;
        }
    }
    return VLC_SUCCESS;
}

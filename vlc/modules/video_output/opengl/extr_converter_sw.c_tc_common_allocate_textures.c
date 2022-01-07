
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int tex_count; TYPE_2__* texs; int tex_target; TYPE_1__* vt; } ;
typedef TYPE_3__ opengl_tex_converter_t ;
struct TYPE_6__ {int type; int format; int internal; } ;
struct TYPE_5__ {int (* TexImage2D ) (int ,int ,int ,int const,int const,int ,int ,int ,int *) ;int (* BindTexture ) (int ,int ) ;} ;
typedef int GLuint ;
typedef int GLsizei ;


 int VLC_SUCCESS ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ,int ,int const,int const,int ,int ,int ,int *) ;

__attribute__((used)) static int
tc_common_allocate_textures(const opengl_tex_converter_t *tc, GLuint *textures,
                            const GLsizei *tex_width, const GLsizei *tex_height)
{
    for (unsigned i = 0; i < tc->tex_count; i++)
    {
        tc->vt->BindTexture(tc->tex_target, textures[i]);
        tc->vt->TexImage2D(tc->tex_target, 0, tc->texs[i].internal,
                           tex_width[i], tex_height[i], 0, tc->texs[i].format,
                           tc->texs[i].type, ((void*)0));
    }
    return VLC_SUCCESS;
}

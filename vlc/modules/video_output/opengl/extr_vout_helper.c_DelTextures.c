
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tex_count; TYPE_1__* vt; } ;
typedef TYPE_2__ opengl_tex_converter_t ;
struct TYPE_4__ {int (* DeleteTextures ) (int,int *) ;} ;
typedef int GLuint ;


 int memset (int *,int ,int) ;
 int stub1 (int,int *) ;

__attribute__((used)) static void
DelTextures(const opengl_tex_converter_t *tc, GLuint *textures)
{
    tc->vt->DeleteTextures(tc->tex_count, textures);
    memset(textures, 0, tc->tex_count * sizeof(GLuint));
}

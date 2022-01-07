
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* p; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_11__ {unsigned int tex_count; int tex_target; TYPE_1__* vt; } ;
typedef TYPE_4__ opengl_tex_converter_t ;
struct TYPE_9__ {int i_visible_pitch; int i_pitch; int * p_pixels; } ;
struct TYPE_8__ {int (* BindTexture ) (int ,scalar_t__) ;int (* ActiveTexture ) (scalar_t__) ;} ;
typedef scalar_t__ GLuint ;
typedef int GLsizei ;


 scalar_t__ GL_TEXTURE0 ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int stub1 (scalar_t__) ;
 int stub2 (int ,scalar_t__) ;
 int upload_plane (TYPE_4__ const*,unsigned int,int const,int const,int ,int ,void const*) ;

__attribute__((used)) static int
tc_common_update(const opengl_tex_converter_t *tc, GLuint *textures,
                 const GLsizei *tex_width, const GLsizei *tex_height,
                 picture_t *pic, const size_t *plane_offset)
{
    int ret = VLC_SUCCESS;
    for (unsigned i = 0; i < tc->tex_count && ret == VLC_SUCCESS; i++)
    {
        assert(textures[i] != 0);
        tc->vt->ActiveTexture(GL_TEXTURE0 + i);
        tc->vt->BindTexture(tc->tex_target, textures[i]);
        const void *pixels = plane_offset != ((void*)0) ?
                             &pic->p[i].p_pixels[plane_offset[i]] :
                             pic->p[i].p_pixels;

        ret = upload_plane(tc, i, tex_width[i], tex_height[i],
                           pic->p[i].i_pitch, pic->p[i].i_visible_pitch, pixels);
    }
    return ret;
}

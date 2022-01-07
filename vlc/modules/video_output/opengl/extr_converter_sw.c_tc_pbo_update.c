
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {size_t display_idx; TYPE_5__** display_pics; } ;
struct priv {TYPE_1__ pbo; } ;
struct TYPE_14__ {int i_planes; TYPE_2__* p; TYPE_6__* p_sys; } ;
typedef TYPE_5__ picture_t ;
struct TYPE_15__ {int * buffers; } ;
typedef TYPE_6__ picture_sys_t ;
struct TYPE_16__ {TYPE_4__* vt; TYPE_3__* texs; int tex_target; struct priv* priv; } ;
typedef TYPE_7__ opengl_tex_converter_t ;
struct TYPE_13__ {int (* BindBuffer ) (int ,int ) ;int (* TexSubImage2D ) (int ,int ,int ,int ,int const,int const,int ,int ,int *) ;int (* PixelStorei ) (int ,int const) ;int (* BindTexture ) (int ,int ) ;int (* ActiveTexture ) (scalar_t__) ;int (* BufferSubData ) (int ,int ,int,int const*) ;} ;
struct TYPE_12__ {int type; int format; } ;
struct TYPE_11__ {int i_lines; int i_pitch; int i_visible_pitch; int * p_pixels; } ;
typedef int GLvoid ;
typedef int GLuint ;
typedef int GLsizeiptr ;
typedef int GLsizei ;


 int GL_PIXEL_UNPACK_BUFFER ;
 scalar_t__ GL_TEXTURE0 ;
 int GL_UNPACK_ROW_LENGTH ;
 int PBO_DISPLAY_COUNT ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ,int,int const*) ;
 int stub3 (scalar_t__) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int const) ;
 int stub6 (int ,int ,int ,int ,int const,int const,int ,int ,int *) ;
 int stub7 (int ,int ) ;

__attribute__((used)) static int
tc_pbo_update(const opengl_tex_converter_t *tc, GLuint *textures,
              const GLsizei *tex_width, const GLsizei *tex_height,
              picture_t *pic, const size_t *plane_offset)
{
    (void) plane_offset; assert(plane_offset == ((void*)0));
    struct priv *priv = tc->priv;

    picture_t *display_pic = priv->pbo.display_pics[priv->pbo.display_idx];
    picture_sys_t *p_sys = display_pic->p_sys;
    priv->pbo.display_idx = (priv->pbo.display_idx + 1) % PBO_DISPLAY_COUNT;

    for (int i = 0; i < pic->i_planes; i++)
    {
        GLsizeiptr size = pic->p[i].i_lines * pic->p[i].i_pitch;
        const GLvoid *data = pic->p[i].p_pixels;
        tc->vt->BindBuffer(GL_PIXEL_UNPACK_BUFFER,
                           p_sys->buffers[i]);
        tc->vt->BufferSubData(GL_PIXEL_UNPACK_BUFFER, 0, size, data);

        tc->vt->ActiveTexture(GL_TEXTURE0 + i);
        tc->vt->BindTexture(tc->tex_target, textures[i]);

        tc->vt->PixelStorei(GL_UNPACK_ROW_LENGTH, pic->p[i].i_pitch
            * tex_width[i] / (pic->p[i].i_visible_pitch ? pic->p[i].i_visible_pitch : 1));

        tc->vt->TexSubImage2D(tc->tex_target, 0, 0, 0, tex_width[i], tex_height[i],
                              tc->texs[i].format, tc->texs[i].type, ((void*)0));
    }


    tc->vt->BindBuffer(GL_PIXEL_UNPACK_BUFFER, 0);

    return VLC_SUCCESS;
}

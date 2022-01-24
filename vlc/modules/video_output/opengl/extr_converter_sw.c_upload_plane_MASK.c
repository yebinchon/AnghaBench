#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void const uint8_t ;
struct priv {size_t texture_temp_buf_size; void const* texture_temp_buf; int /*<<< orphan*/  has_unpack_subimage; } ;
struct TYPE_7__ {int /*<<< orphan*/  tex_target; TYPE_2__* vt; TYPE_1__* texs; struct priv* priv; } ;
typedef  TYPE_3__ opengl_tex_converter_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* TexSubImage2D ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ;int /*<<< orphan*/  (* PixelStorei ) (int /*<<< orphan*/ ,unsigned int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  type; int /*<<< orphan*/  format; } ;
typedef  unsigned int GLsizei ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  GL_UNPACK_ALIGNMENT ; 
 int /*<<< orphan*/  GL_UNPACK_ROW_LENGTH ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (void const*,void const*,unsigned int) ; 
 void const* FUNC2 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 

__attribute__((used)) static int
FUNC8(const opengl_tex_converter_t *tc, unsigned tex_idx,
             GLsizei width, GLsizei height,
             unsigned pitch, unsigned visible_pitch, const void *pixels)
{
    struct priv *priv = tc->priv;
    GLenum tex_format = tc->texs[tex_idx].format;
    GLenum tex_type = tc->texs[tex_idx].type;

    /* This unpack alignment is the default, but setting it just in case. */
    tc->vt->PixelStorei(GL_UNPACK_ALIGNMENT, 4);

    if (!priv->has_unpack_subimage)
    {
        if (pitch != visible_pitch)
        {
#define ALIGN(x, y) (((x) + ((y) - 1)) & ~((y) - 1))
            visible_pitch = ALIGN(visible_pitch, 4);
#undef ALIGN
            size_t buf_size = visible_pitch * height;
            const uint8_t *source = pixels;
            uint8_t *destination;
            if (priv->texture_temp_buf_size < buf_size)
            {
                priv->texture_temp_buf =
                    FUNC2(priv->texture_temp_buf, buf_size);
                if (priv->texture_temp_buf == NULL)
                {
                    priv->texture_temp_buf_size = 0;
                    return VLC_ENOMEM;
                }
                priv->texture_temp_buf_size = buf_size;
            }
            destination = priv->texture_temp_buf;

            for (GLsizei h = 0; h < height ; h++)
            {
                FUNC1(destination, source, visible_pitch);
                source += pitch;
                destination += visible_pitch;
            }
            tc->vt->TexSubImage2D(tc->tex_target, 0, 0, 0, width, height,
                                  tex_format, tex_type, priv->texture_temp_buf);
        }
        else
        {
            tc->vt->TexSubImage2D(tc->tex_target, 0, 0, 0, width, height,
                                  tex_format, tex_type, pixels);
        }
    }
    else
    {
        tc->vt->PixelStorei(GL_UNPACK_ROW_LENGTH, pitch * width / (visible_pitch ? visible_pitch : 1));
        tc->vt->TexSubImage2D(tc->tex_target, 0, 0, 0, width, height,
                              tex_format, tex_type, pixels);
    }
    return VLC_SUCCESS;
}
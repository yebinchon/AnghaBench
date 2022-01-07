
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void const uint8_t ;
struct priv {size_t texture_temp_buf_size; void const* texture_temp_buf; int has_unpack_subimage; } ;
struct TYPE_7__ {int tex_target; TYPE_2__* vt; TYPE_1__* texs; struct priv* priv; } ;
typedef TYPE_3__ opengl_tex_converter_t ;
struct TYPE_6__ {int (* TexSubImage2D ) (int ,int ,int ,int ,unsigned int,unsigned int,int ,int ,void const*) ;int (* PixelStorei ) (int ,unsigned int) ;} ;
struct TYPE_5__ {int type; int format; } ;
typedef unsigned int GLsizei ;
typedef int GLenum ;


 unsigned int ALIGN (unsigned int,int) ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNPACK_ROW_LENGTH ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int memcpy (void const*,void const*,unsigned int) ;
 void const* realloc_or_free (void const*,size_t) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int ,int ,int ,unsigned int,unsigned int,int ,int ,void const*) ;
 int stub3 (int ,int ,int ,int ,unsigned int,unsigned int,int ,int ,void const*) ;
 int stub4 (int ,unsigned int) ;
 int stub5 (int ,int ,int ,int ,unsigned int,unsigned int,int ,int ,void const*) ;

__attribute__((used)) static int
upload_plane(const opengl_tex_converter_t *tc, unsigned tex_idx,
             GLsizei width, GLsizei height,
             unsigned pitch, unsigned visible_pitch, const void *pixels)
{
    struct priv *priv = tc->priv;
    GLenum tex_format = tc->texs[tex_idx].format;
    GLenum tex_type = tc->texs[tex_idx].type;


    tc->vt->PixelStorei(GL_UNPACK_ALIGNMENT, 4);

    if (!priv->has_unpack_subimage)
    {
        if (pitch != visible_pitch)
        {

            visible_pitch = (((visible_pitch) + ((4) - 1)) & ~((4) - 1));

            size_t buf_size = visible_pitch * height;
            const uint8_t *source = pixels;
            uint8_t *destination;
            if (priv->texture_temp_buf_size < buf_size)
            {
                priv->texture_temp_buf =
                    realloc_or_free(priv->texture_temp_buf, buf_size);
                if (priv->texture_temp_buf == ((void*)0))
                {
                    priv->texture_temp_buf_size = 0;
                    return VLC_ENOMEM;
                }
                priv->texture_temp_buf_size = buf_size;
            }
            destination = priv->texture_temp_buf;

            for (GLsizei h = 0; h < height ; h++)
            {
                memcpy(destination, source, visible_pitch);
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

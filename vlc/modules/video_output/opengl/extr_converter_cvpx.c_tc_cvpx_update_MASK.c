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
struct priv {int /*<<< orphan*/ * last_pic; int /*<<< orphan*/  gl_ctx; } ;
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_7__ {unsigned int tex_count; int /*<<< orphan*/  gl; TYPE_2__* texs; int /*<<< orphan*/  tex_target; TYPE_1__* vt; struct priv* priv; } ;
typedef  TYPE_3__ opengl_tex_converter_t ;
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  format; int /*<<< orphan*/  internal; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* BindTexture ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ActiveTexture ) (scalar_t__) ;} ;
typedef  int /*<<< orphan*/  IOSurfaceRef ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  int /*<<< orphan*/  CVPixelBufferRef ;
typedef  scalar_t__ CGLError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ GL_TEXTURE0 ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ kCGLNoError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(const opengl_tex_converter_t *tc, GLuint *textures,
               const GLsizei *tex_width, const GLsizei *tex_height,
               picture_t *pic, const size_t *plane_offset)
{
    (void) plane_offset;
    struct priv *priv = tc->priv;

    CVPixelBufferRef pixelBuffer = FUNC3(pic);

    IOSurfaceRef surface = FUNC2(pixelBuffer);

    for (unsigned i = 0; i < tc->tex_count; ++i)
    {
        tc->vt->ActiveTexture(GL_TEXTURE0 + i);
        tc->vt->BindTexture(tc->tex_target, textures[i]);

        CGLError err =
            FUNC1(priv->gl_ctx, tc->tex_target,
                                   tc->texs[i].internal,
                                   tex_width[i], tex_height[i],
                                   tc->texs[i].format,
                                   tc->texs[i].type,
                                   surface, i);
        if (err != kCGLNoError)
        {
            FUNC4(tc->gl, "CGLTexImageIOSurface2D error: %u: %s", i,
                    FUNC0(err));
            return VLC_EGENERIC;
        }
    }

    if (priv->last_pic != pic)
    {
        if (priv->last_pic != NULL)
            FUNC6(priv->last_pic);
        priv->last_pic = FUNC5(pic);
    }

    return VLC_SUCCESS;
}
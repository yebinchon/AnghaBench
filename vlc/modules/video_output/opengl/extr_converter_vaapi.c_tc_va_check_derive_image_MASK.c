#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_decoder_device ;
struct priv {int /*<<< orphan*/  vadpy; } ;
typedef  int /*<<< orphan*/  picture_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  fmt; struct priv* priv; int /*<<< orphan*/  gl; } ;
typedef  TYPE_1__ opengl_tex_converter_t ;
typedef  int /*<<< orphan*/  VASurfaceID ;
struct TYPE_6__ {int /*<<< orphan*/  image_id; } ;
typedef  TYPE_2__ VAImage ;

/* Variables and functions */
 int /*<<< orphan*/  VA_INVALID_ID ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(opengl_tex_converter_t *tc,
                         vlc_decoder_device *dec_device)
{
    vlc_object_t *o = FUNC0(tc->gl);
    struct priv *priv = tc->priv;
    VASurfaceID *va_surface_ids;

    picture_pool_t *pool = FUNC3(o, dec_device, priv->vadpy, 1,
                                             &va_surface_ids, &tc->fmt, true);
    if (!pool)
        return VLC_EGENERIC;

    VAImage va_image = { .image_id = VA_INVALID_ID };
    int ret = FUNC2(o, priv->vadpy, va_surface_ids[0],
                                    &va_image);

    FUNC1(pool);

    return ret;
}
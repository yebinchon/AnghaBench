#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {unsigned int num_planes; int /*<<< orphan*/  image_id; int /*<<< orphan*/  buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  pic; TYPE_1__ va_image; int /*<<< orphan*/ * egl_images; } ;
struct priv {TYPE_2__ last; int /*<<< orphan*/  vadpy; } ;
struct TYPE_8__ {int /*<<< orphan*/  gl; } ;
typedef  TYPE_3__ opengl_tex_converter_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const opengl_tex_converter_t *tc, struct priv *priv)
{
    vlc_object_t *o = FUNC0(tc->gl);

    for (unsigned i = 0; i < priv->last.va_image.num_planes; ++i)
        FUNC2(tc, priv->last.egl_images[i]);

    FUNC4(o, priv->vadpy, priv->last.va_image.buf);

    FUNC3(o, priv->vadpy, priv->last.va_image.image_id);

    FUNC1(priv->last.pic);
}
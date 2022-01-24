#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct priv {int /*<<< orphan*/  awh; scalar_t__ stex_attached; } ;
struct TYPE_2__ {struct priv* priv; } ;
typedef  TYPE_1__ opengl_tex_converter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*) ; 

__attribute__((used)) static void
FUNC2(vlc_object_t *obj)
{
    opengl_tex_converter_t *tc = (void *)obj;
    struct priv *priv = tc->priv;

    if (priv->stex_attached)
        FUNC0(priv->awh);

    FUNC1(priv);
}
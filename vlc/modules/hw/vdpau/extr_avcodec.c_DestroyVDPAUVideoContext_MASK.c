#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct video_context_private {int /*<<< orphan*/  vdp; int /*<<< orphan*/ ** pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *private)
{
    struct video_context_private *vctx_priv = private;
    for (unsigned i = 0; vctx_priv->pool[i] != NULL; i++)
        FUNC1(vctx_priv->pool[i]);
    FUNC0(vctx_priv->vdp);
}
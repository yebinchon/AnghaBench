#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* destroy ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ vlc_gl_t ;
struct vlc_gl_priv_t {int /*<<< orphan*/  rc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(vlc_gl_t *gl)
{
    struct vlc_gl_priv_t *glpriv = (struct vlc_gl_priv_t *)gl;
    if (!FUNC2(&glpriv->rc))
        return;

    if (gl->destroy != NULL)
        gl->destroy(gl);
    FUNC4(FUNC0(gl));
    FUNC3(gl);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  (* DeleteProgram ) (scalar_t__) ;} ;
struct TYPE_11__ {TYPE_1__ vt; } ;
typedef  TYPE_3__ vout_display_opengl_t ;
struct prgm {scalar_t__ id; TYPE_4__* tc; } ;
struct TYPE_10__ {int /*<<< orphan*/  pl_vars; } ;
struct TYPE_12__ {scalar_t__ pl_ctx; TYPE_2__ uloc; int /*<<< orphan*/ * priv; int /*<<< orphan*/ * p_module; } ;
typedef  TYPE_4__ opengl_tex_converter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC6(vout_display_opengl_t *vgl, struct prgm *prgm)
{
    opengl_tex_converter_t *tc = prgm->tc;
    if (tc->p_module != NULL)
        FUNC1(tc, tc->p_module);
    else if (tc->priv != NULL)
        FUNC2(tc);
    if (prgm->id != 0)
        vgl->vt.DeleteProgram(prgm->id);

#ifdef HAVE_LIBPLACEBO
    FREENULL(tc->uloc.pl_vars);
    if (tc->pl_ctx)
        pl_context_destroy(&tc->pl_ctx);
#endif

    FUNC5(tc);
}
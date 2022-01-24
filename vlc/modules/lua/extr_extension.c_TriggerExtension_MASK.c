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
typedef  int /*<<< orphan*/  extensions_manager_t ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ extension_t ;
struct TYPE_5__ {int /*<<< orphan*/ * L; int /*<<< orphan*/  dtable; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_END ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3( extensions_manager_t *p_mgr,
                             extension_t *p_ext )
{
    int i_ret = FUNC0( p_mgr, p_ext, "trigger", LUA_END );

    /* Close lua state for trigger-only extensions */
    if( p_ext->p_sys->L )
    {
        FUNC2( &p_ext->p_sys->dtable );
        FUNC1( p_ext->p_sys->L );
    }
    p_ext->p_sys->L = NULL;

    return i_ret;
}
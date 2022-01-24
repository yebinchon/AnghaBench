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
typedef  int /*<<< orphan*/  extensions_manager_t ;
typedef  int /*<<< orphan*/  extension_t ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC2( extensions_manager_t *p_mgr, extension_t *p_ext )
{
    FUNC0( p_mgr != NULL && p_ext != NULL );
    return FUNC1( p_mgr, p_ext, "activate", LUA_END );
}
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

/* Variables and functions */
 int /*<<< orphan*/  ScanLuaCallback ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2( extensions_manager_t *p_mgr )
{
    int i_ret =
        FUNC1( FUNC0( p_mgr ),
                                      "extensions",
                                      &ScanLuaCallback,
                                      NULL );

    if( !i_ret )
        return VLC_EGENERIC;

    return VLC_SUCCESS;
}
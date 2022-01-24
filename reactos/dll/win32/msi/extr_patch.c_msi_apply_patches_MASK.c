#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  int /*<<< orphan*/ **** LPWSTR ;

/* Variables and functions */
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ****) ; 
 size_t FUNC2 (TYPE_1__*,int /*<<< orphan*/ ****) ; 
 int /*<<< orphan*/ ****** FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ****) ; 
 int /*<<< orphan*/ ******* FUNC5 (int /*<<< orphan*/ ****,char) ; 
 int /*<<< orphan*/  szPatch ; 

UINT FUNC6( MSIPACKAGE *package )
{
    LPWSTR patch_list, *patches;
    UINT i, r = ERROR_SUCCESS;

    patch_list = FUNC3( package->db, szPatch );

    FUNC0("patches to be applied: %s\n", FUNC1(patch_list));

    patches = FUNC5( patch_list, ';' );
    for (i = 0; patches && patches[i] && r == ERROR_SUCCESS; i++)
        r = FUNC2( package, patches[i] );

    FUNC4( *patches );
    FUNC4( patch_list );
    return r;
}
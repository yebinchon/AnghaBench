#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_16__ {int /*<<< orphan*/  storage; } ;
struct TYPE_15__ {int /*<<< orphan*/  patches; int /*<<< orphan*/  db; } ;
struct TYPE_14__ {int /*<<< orphan*/  entry; int /*<<< orphan*/  state; int /*<<< orphan*/  uninstallable; int /*<<< orphan*/  transforms; } ;
typedef  TYPE_1__ MSIPATCHINFO ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  TYPE_3__ MSIDATABASE ;

/* Variables and functions */
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSIPATCHSTATE_APPLIED ; 
 size_t FUNC0 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ ,char) ; 
 size_t FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 size_t FUNC6 (TYPE_2__*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static UINT FUNC8( MSIPACKAGE *package, MSIDATABASE *patch_db, MSIPATCHINFO *patch )
{
    UINT i, r = ERROR_SUCCESS;
    WCHAR **substorage;

    /* apply substorage transforms */
    substorage = FUNC4( patch->transforms, ';' );
    for (i = 0; substorage && substorage[i] && r == ERROR_SUCCESS; i++)
    {
        r = FUNC0( package, patch_db, substorage[i] );
        if (r == ERROR_SUCCESS)
        {
            r = FUNC7( package->db, patch );
            if (r == ERROR_SUCCESS)
                r = FUNC5( package, patch_db->storage, patch );
        }
    }
    FUNC3( substorage );
    if (r != ERROR_SUCCESS)
        return r;

    r = FUNC6( package );
    if (r != ERROR_SUCCESS)
        return r;

    patch->uninstallable = FUNC1( patch_db );
    patch->state         = MSIPATCHSTATE_APPLIED;
    FUNC2( &package->patches, &patch->entry );
    return ERROR_SUCCESS;
}
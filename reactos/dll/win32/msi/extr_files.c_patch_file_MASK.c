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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {int /*<<< orphan*/ * path; TYPE_1__* File; } ;
struct TYPE_7__ {int /*<<< orphan*/  db; } ;
struct TYPE_6__ {int /*<<< orphan*/ * TargetPath; } ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  TYPE_3__ MSIFILEPATCH ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_INSTALL_FAILURE ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC8( MSIPACKAGE *package, MSIFILEPATCH *patch )
{
    UINT r = ERROR_SUCCESS;
    WCHAR *tmpfile = FUNC6( package->db );

    if (!tmpfile) return ERROR_INSTALL_FAILURE;
    if (FUNC0( patch->path, patch->File->TargetPath, tmpfile, 0 ))
    {
        FUNC1( patch->File->TargetPath );
        FUNC3( tmpfile, patch->File->TargetPath );
    }
    else
    {
        FUNC4("failed to patch %s: %08x\n", FUNC5(patch->File->TargetPath), FUNC2());
        r = ERROR_INSTALL_FAILURE;
    }
    FUNC1( patch->path );
    FUNC1( tmpfile );
    FUNC7( tmpfile );
    return r;
}
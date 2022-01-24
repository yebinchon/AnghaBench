#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {scalar_t__ State; } ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_1__ MSIFOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FOLDER_STATE_CREATED ; 
 scalar_t__ FOLDER_STATE_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static UINT FUNC3( MSIPACKAGE *package, const WCHAR *dir )
{
    MSIFOLDER *folder;
    const WCHAR *install_path;

    install_path = FUNC2( package, dir );
    if (!install_path) return ERROR_FUNCTION_FAILED;

    folder = FUNC1( package, dir );
    if (folder->State == FOLDER_STATE_UNINITIALIZED)
    {
        FUNC0( install_path );
        folder->State = FOLDER_STATE_CREATED;
    }
    return ERROR_SUCCESS;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ state; scalar_t__* TargetPath; } ;
struct TYPE_6__ {int need_reboot_at_end; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSIFILE ;
typedef  scalar_t__* LPWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_ALREADY_EXISTS ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SHARING_VIOLATION ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ ERROR_USER_MAPPED_FILE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  MOVEFILE_DELAY_UNTIL_REBOOT ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 scalar_t__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 scalar_t__ msifs_overwrite ; 
 scalar_t__* FUNC12 (scalar_t__*) ; 
 int FUNC13 (scalar_t__*) ; 
 scalar_t__* FUNC14 (scalar_t__*,char) ; 
 int /*<<< orphan*/  szMsi ; 

__attribute__((used)) static UINT FUNC15(MSIPACKAGE *package, MSIFILE *file, LPWSTR source)
{
    UINT gle;

    FUNC6("Copying %s to %s\n", FUNC9(source), FUNC9(file->TargetPath));

    gle = FUNC8(file, source);
    if (gle == ERROR_SUCCESS)
        return gle;

    if (gle == ERROR_ALREADY_EXISTS && file->state == msifs_overwrite)
    {
        FUNC6("overwriting existing file\n");
        return ERROR_SUCCESS;
    }
    else if (gle == ERROR_ACCESS_DENIED)
    {
        FUNC5(file->TargetPath, FILE_ATTRIBUTE_NORMAL);

        gle = FUNC8(file, source);
        FUNC6("Overwriting existing file: %d\n", gle);
    }
    if (gle == ERROR_SHARING_VIOLATION || gle == ERROR_USER_MAPPED_FILE)
    {
        WCHAR *tmpfileW, *pathW, *p;
        DWORD len;

        FUNC6("file in use, scheduling rename operation\n");

        if (!(pathW = FUNC12( file->TargetPath ))) return ERROR_OUTOFMEMORY;
        if ((p = FUNC14(pathW, '\\'))) *p = 0;
        len = FUNC13( pathW ) + 16;
        if (!(tmpfileW = FUNC10(len * sizeof(WCHAR))))
        {
            FUNC11( pathW );
            return ERROR_OUTOFMEMORY;
        }
        if (!FUNC3( pathW, szMsi, 0, tmpfileW )) tmpfileW[0] = 0;
        FUNC11( pathW );

        if (FUNC0(source, tmpfileW, FALSE) &&
            FUNC4(file->TargetPath, NULL, MOVEFILE_DELAY_UNTIL_REBOOT) &&
            FUNC4(tmpfileW, file->TargetPath, MOVEFILE_DELAY_UNTIL_REBOOT))
        {
            package->need_reboot_at_end = 1;
            gle = ERROR_SUCCESS;
        }
        else
        {
            gle = FUNC2();
            FUNC7("failed to schedule rename operation: %d)\n", gle);
            FUNC1( tmpfileW );
        }
        FUNC11(tmpfileW);
    }

    return gle;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  Directory; } ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ Attributes; TYPE_2__* Component; int /*<<< orphan*/  TargetPath; int /*<<< orphan*/  disk_id; } ;
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  TYPE_1__ MSIFILE ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MSICABEXTRACT_BEGINEXTRACT ; 
 scalar_t__ MSICABEXTRACT_FILEEXTRACTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ msifs_installed ; 
 scalar_t__ msifs_missing ; 
 scalar_t__ msifs_overwrite ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC6(MSIPACKAGE *package, LPCWSTR filename, DWORD action,
                            LPWSTR *path, DWORD *attrs, PVOID user)
{
    MSIFILE *file = *(MSIFILE **)user;

    if (action == MSICABEXTRACT_BEGINEXTRACT)
    {
        if (!(file = FUNC2( package, file->disk_id, filename )))
        {
            FUNC0("unknown file in cabinet (%s)\n", FUNC1(filename));
            return FALSE;
        }
        if (file->state != msifs_missing && file->state != msifs_overwrite)
            return FALSE;

        if (!FUNC4( file->Component ))
        {
            FUNC3( package, file->Component->Directory );
        }
        *path = FUNC5( file->TargetPath );
        *attrs = file->Attributes;
        *(MSIFILE **)user = file;
    }
    else if (action == MSICABEXTRACT_FILEEXTRACTED)
    {
        if (!FUNC4( file->Component )) file->state = msifs_installed;
    }

    return TRUE;
}
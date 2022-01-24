#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ Action; int /*<<< orphan*/  Component; int /*<<< orphan*/  Enabled; } ;
struct TYPE_13__ {int /*<<< orphan*/  extracted; TYPE_1__* File; int /*<<< orphan*/  path; int /*<<< orphan*/  disk_id; } ;
struct TYPE_12__ {int /*<<< orphan*/  db; } ;
struct TYPE_11__ {scalar_t__ Attributes; int /*<<< orphan*/  File; TYPE_4__* Component; } ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  TYPE_3__ MSIFILEPATCH ;
typedef  TYPE_4__ MSICOMPONENT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ INSTALLSTATE_LOCAL ; 
 scalar_t__ MSICABEXTRACT_BEGINEXTRACT ; 
 scalar_t__ MSICABEXTRACT_FILEEXTRACTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC7(MSIPACKAGE *package, LPCWSTR file, DWORD action,
                          LPWSTR *path, DWORD *attrs, PVOID user)
{
    MSIFILEPATCH *patch = *(MSIFILEPATCH **)user;

    if (action == MSICABEXTRACT_BEGINEXTRACT)
    {
        MSICOMPONENT *comp;

        if (FUNC3( package, patch->disk_id ) ||
            !(patch = FUNC2( package, patch->disk_id, file ))) return FALSE;

        comp = patch->File->Component;
        comp->Action = FUNC5( package, comp );
        if (!comp->Enabled || comp->Action != INSTALLSTATE_LOCAL)
        {
            FUNC0("file %s component %s not installed or disabled\n",
                  FUNC1(patch->File->File), FUNC1(comp->Component));
            return FALSE;
        }

        patch->path = FUNC4( package->db );
        *path = FUNC6( patch->path );
        *attrs = patch->File->Attributes;
        *(MSIFILEPATCH **)user = patch;
    }
    else if (action == MSICABEXTRACT_FILEEXTRACTED)
    {
        patch->extracted = TRUE;
    }

    return TRUE;
}
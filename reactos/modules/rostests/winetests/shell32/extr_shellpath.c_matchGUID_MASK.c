#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__* abID; } ;
struct TYPE_8__ {TYPE_1__ mkid; } ;
typedef  TYPE_2__* LPITEMIDLIST ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  const GUID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ PT_GUID ; 
 scalar_t__ PT_SHELLEXT ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  pMalloc ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC7(int folder, const GUID *guid, const GUID *guid_alt)
{
    LPITEMIDLIST pidl;
    HRESULT hr;

    if (!&pSHGetFolderLocation) return;
    if (!guid) return;

    pidl = NULL;
    hr = FUNC5(NULL, folder, NULL, 0, &pidl);
    if (hr == S_OK)
    {
        LPITEMIDLIST pidlLast = FUNC4(pidl);

        if (pidlLast && (pidlLast->mkid.abID[0] == PT_SHELLEXT ||
         pidlLast->mkid.abID[0] == PT_GUID))
        {
            GUID *shellGuid = (GUID *)(pidlLast->mkid.abID + 2);

            if (!guid_alt)
             FUNC3(FUNC1(shellGuid, guid),
              "%s: got GUID %s, expected %s\n", FUNC2(folder),
              FUNC6(shellGuid), FUNC6(guid));
            else
             FUNC3(FUNC1(shellGuid, guid) ||
              FUNC1(shellGuid, guid_alt),
              "%s: got GUID %s, expected %s or %s\n", FUNC2(folder),
              FUNC6(shellGuid), FUNC6(guid), FUNC6(guid_alt));
        }
        FUNC0(pMalloc, pidl);
    }
}
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
typedef  char WCHAR ;
typedef  char* ULONG ;
typedef  scalar_t__ PSID ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char**) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 

__attribute__((used)) static BOOL
FUNC7(HKEY hDomainKey,
                          ULONG AliasId,
                          PSID MemberSid)
{
    DWORD dwDisposition;
    LPWSTR MemberSidString = NULL;
    WCHAR szKeyName[256];
    HKEY hMembersKey;

    FUNC0(MemberSid, &MemberSidString);

    FUNC6(szKeyName, L"Aliases\\%08lX\\Members", AliasId);

    if (!FUNC3(hDomainKey,
                         szKeyName,
                         0,
                         NULL,
                         REG_OPTION_NON_VOLATILE,
                         KEY_ALL_ACCESS,
                         NULL,
                         &hMembersKey,
                         &dwDisposition))
    {
        FUNC4(hMembersKey,
                      MemberSidString,
                      0,
                      REG_BINARY,
                      (LPVOID)MemberSid,
                      FUNC5(MemberSid));

        FUNC2(hMembersKey);
    }

    FUNC6(szKeyName, L"Aliases\\Members\\%s", MemberSidString);

    if (!FUNC3(hDomainKey,
                         szKeyName,
                         0,
                         NULL,
                         REG_OPTION_NON_VOLATILE,
                         KEY_ALL_ACCESS,
                         NULL,
                         &hMembersKey,
                         &dwDisposition))
    {
        FUNC6(szKeyName, L"%08lX", AliasId);

        FUNC4(hMembersKey,
                      szKeyName,
                      0,
                      REG_BINARY,
                      (LPVOID)MemberSid,
                      FUNC5(MemberSid));

        FUNC2(hMembersKey);
    }

    if (MemberSidString != NULL)
        FUNC1(MemberSidString);

    return TRUE;
}
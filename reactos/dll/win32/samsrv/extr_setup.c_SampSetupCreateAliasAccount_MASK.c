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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  char* ULONG ;
typedef  int /*<<< orphan*/ * PSECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static
NTSTATUS
FUNC11(HANDLE hDomainKey,
                            LPCWSTR lpAccountName,
                            LPCWSTR lpDescription,
                            ULONG ulRelativeId)
{
    WCHAR szAccountKeyName[32];
    HANDLE hAccountKey = NULL;
    HANDLE hNamesKey = NULL;
    PSECURITY_DESCRIPTOR Sd = NULL;
    ULONG SdSize = 0;
    NTSTATUS Status;

    FUNC9(szAccountKeyName, L"Aliases\\%08lX", ulRelativeId);

    Status = FUNC5(hDomainKey,
                              szAccountKeyName,
                              KEY_ALL_ACCESS,
                              &hAccountKey);
    if (!FUNC0(Status))
        return Status;

    Status = FUNC8(hAccountKey,
                             L"Name",
                             REG_SZ,
                             (LPVOID)lpAccountName,
                             (FUNC10(lpAccountName) + 1) * sizeof(WCHAR));
    if (!FUNC0(Status))
        goto done;

    Status = FUNC8(hAccountKey,
                             L"Description",
                             REG_SZ,
                             (LPVOID)lpDescription,
                             (FUNC10(lpDescription) + 1) * sizeof(WCHAR));
    if (!FUNC0(Status))
        goto done;

    /* Create the server SD */
    Status = FUNC3(&Sd,
                               &SdSize);
    if (!FUNC0(Status))
        goto done;

    /* Set SecDesc attribute*/
    Status = FUNC8(hAccountKey,
                             L"SecDesc",
                             REG_BINARY,
                             *Sd,
                             SdSize);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC7(hDomainKey,
                            L"Aliases\\Names",
                            KEY_ALL_ACCESS,
                            &hNamesKey);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC8(hNamesKey,
                            lpAccountName,
                            REG_DWORD,
                            (LPVOID)&ulRelativeId,
                            sizeof(ULONG));

done:
    FUNC4(&hNamesKey);

    if (Sd != NULL)
        FUNC1(FUNC2(), 0, Sd);

    if (hAccountKey != NULL)
    {
        FUNC4(&hAccountKey);

        if (!FUNC0(Status))
            FUNC6(hDomainKey,
                             szAccountKeyName);
    }

    return Status;
}
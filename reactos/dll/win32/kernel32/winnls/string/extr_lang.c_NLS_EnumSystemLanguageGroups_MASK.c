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
typedef  int /*<<< orphan*/  szValue ;
typedef  int /*<<< orphan*/  szNumberA ;
typedef  int /*<<< orphan*/  szNumber ;
typedef  int /*<<< orphan*/  szGrpNameA ;
typedef  int /*<<< orphan*/  szGrpName ;
typedef  char WCHAR ;
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {int dwFlags; int (* procW ) (int /*<<< orphan*/ ,char*,char*,int const,int /*<<< orphan*/ ) ;int (* procA ) (int /*<<< orphan*/ ,char*,char*,int const,int /*<<< orphan*/ ) ;int /*<<< orphan*/  lParam; } ;
typedef  int /*<<< orphan*/  LGRPID ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_1__ ENUMLANGUAGEGROUP_CALLBACKS ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  ERROR_INVALID_FLAGS ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  LGRPID_INSTALLED 129 
#define  LGRPID_SUPPORTED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,char*,int,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,char*,int const,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,char*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szLangGroupsKeyName ; 

__attribute__((used)) static BOOL FUNC12(ENUMLANGUAGEGROUP_CALLBACKS *lpProcs)
{
    WCHAR szNumber[10], szValue[4];
    HANDLE hKey;
    BOOL bContinue = TRUE;
    ULONG ulIndex = 0;

    if (!lpProcs)
    {
        FUNC5(ERROR_INVALID_PARAMETER);
        return FALSE;
    }

    switch (lpProcs->dwFlags)
    {
    case 0:
        /* Default to LGRPID_INSTALLED */
        lpProcs->dwFlags = LGRPID_INSTALLED;
        /* Fall through... */
    case LGRPID_INSTALLED:
    case LGRPID_SUPPORTED:
        break;
    default:
        FUNC5(ERROR_INVALID_FLAGS);
        return FALSE;
    }

    hKey = FUNC3( 0, szLangGroupsKeyName );

    if (!hKey)
        FUNC0("NLS registry key not found. Please apply the default registry file 'wine.inf'\n");

    while (bContinue)
    {
        if (FUNC2( hKey, ulIndex, szNumber, sizeof(szNumber),
                              szValue, sizeof(szValue) ))
        {
            BOOL bInstalled = szValue[0] == '1';
            LGRPID lgrpid = FUNC9( szNumber, NULL, 16 );

            FUNC6("grpid %s (%sinstalled)\n", FUNC8(szNumber),
                   bInstalled ? "" : "not ");

            if (lpProcs->dwFlags == LGRPID_SUPPORTED || bInstalled)
            {
                WCHAR szGrpName[48];

                if (!FUNC1( lgrpid, szGrpName, sizeof(szGrpName) / sizeof(WCHAR) ))
                    szGrpName[0] = '\0';

                if (lpProcs->procW)
                    bContinue = lpProcs->procW( lgrpid, szNumber, szGrpName, lpProcs->dwFlags,
                                                lpProcs->lParam );
                else
                {
                    char szNumberA[sizeof(szNumber)/sizeof(WCHAR)];
                    char szGrpNameA[48];

                    /* FIXME: MSDN doesn't say which code page the W->A translation uses,
                     *        or whether the language names are ever localised. Assume CP_ACP.
                     */

                    FUNC7(CP_ACP, 0, szNumber, -1, szNumberA, sizeof(szNumberA), 0, 0);
                    FUNC7(CP_ACP, 0, szGrpName, -1, szGrpNameA, sizeof(szGrpNameA), 0, 0);

                    bContinue = lpProcs->procA( lgrpid, szNumberA, szGrpNameA, lpProcs->dwFlags,
                                                lpProcs->lParam );
                }
            }

            ulIndex++;
        }
        else
            bContinue = FALSE;

        if (!bContinue)
            break;
    }

    if (hKey)
        FUNC4( hKey );

    return TRUE;
}
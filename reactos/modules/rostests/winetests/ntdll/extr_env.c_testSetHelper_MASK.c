#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bvar ;
typedef  int /*<<< orphan*/  bval2 ;
typedef  int /*<<< orphan*/  bval1 ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int Length; int MaximumLength; int /*<<< orphan*/ * Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int NTSTATUS ;
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
#define  STATUS_SUCCESS 129 
#define  STATUS_VARIABLE_NOT_FOUND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(LPWSTR* env, const char* var, const char* val, NTSTATUS ret, NTSTATUS alt)
{
    WCHAR               bvar[256], bval1[256], bval2[256];
    UNICODE_STRING      uvar;
    UNICODE_STRING      uval;
    NTSTATUS            nts;

    uvar.Length = FUNC7(var) * sizeof(WCHAR);
    uvar.MaximumLength = uvar.Length + sizeof(WCHAR);
    uvar.Buffer = bvar;
    FUNC3( bvar, sizeof(bvar), NULL, var, FUNC7(var)+1 );
    if (val)
    {
        uval.Length = FUNC7(val) * sizeof(WCHAR);
        uval.MaximumLength = uval.Length + sizeof(WCHAR);
        uval.Buffer = bval1;
        FUNC3( bval1, sizeof(bval1), NULL, val, FUNC7(val)+1 );
    }
    nts = FUNC5(env, &uvar, val ? &uval : NULL);
    FUNC2(nts == ret || (alt && nts == alt), "Setting var %s=%s (%x/%x)\n", var, val, nts, ret);
    if (nts == STATUS_SUCCESS)
    {
        uval.Length = 0;
        uval.MaximumLength = sizeof(bval2);
        uval.Buffer = bval2;
        nts = FUNC4(*env, &uvar, &uval);
        switch (nts)
        {
        case STATUS_SUCCESS:
            FUNC2(FUNC1(bval1, bval2) == 0, "Cannot get value written to environment\n");
            break;
        case STATUS_VARIABLE_NOT_FOUND:
            FUNC2(val == NULL ||
               FUNC0(FUNC6(var,'=') != NULL), /* variable containing '=' may be set but not found again on NT4 */
               "Couldn't find variable, but didn't delete it. val = %s\n", val);
            break;
        default:
            FUNC2(0, "Wrong ret %u for %s\n", nts, var);
            break;
        }
    }
}
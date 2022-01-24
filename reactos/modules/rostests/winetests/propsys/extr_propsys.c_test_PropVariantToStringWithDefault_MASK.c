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
typedef  char WCHAR ;
struct TYPE_4__ {int lVal; char* pwszVal; char* pszVal; int /*<<< orphan*/ * bstrVal; int /*<<< orphan*/  boolVal; } ;
struct TYPE_5__ {TYPE_1__ u; void* vt; } ;
typedef  TYPE_2__ PROPVARIANT ;
typedef  char* LPCWSTR ;
typedef  char CHAR ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*,char*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 void* VT_BOOL ; 
 void* VT_BSTR ; 
 void* VT_EMPTY ; 
 void* VT_I4 ; 
 void* VT_LPSTR ; 
 void* VT_LPWSTR ; 
 void* VT_NULL ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    PROPVARIANT propvar;
    static WCHAR default_value[] = {'t', 'e', 's', 't', 0};
    static WCHAR wstr_test2[] =  {'t', 'e', 's', 't', '2', 0};
    static WCHAR wstr_empty[] = {0};
    static WCHAR wstr_space[] = {' ', 0};
    static CHAR str_test2[] =  "test2";
    static CHAR str_empty[] = "";
    static CHAR str_space[] = " ";
    LPCWSTR result;

    propvar.vt = VT_EMPTY;
    result = FUNC0(&propvar, default_value);
    FUNC4(result == default_value, "Unexpected value %s\n", FUNC5(result));

    propvar.vt = VT_NULL;
    result = FUNC0(&propvar, default_value);
    FUNC4(result == default_value, "Unexpected value %s\n", FUNC5(result));

    propvar.vt = VT_BOOL;
    propvar.u.boolVal = VARIANT_TRUE;
    result = FUNC0(&propvar, default_value);
    FUNC4(result == default_value, "Unexpected value %s\n", FUNC5(result));

    propvar.vt = VT_I4;
    propvar.u.lVal = 15;
    result = FUNC0(&propvar, default_value);
    FUNC4(result == default_value, "Unexpected value %s\n", FUNC5(result));

    /* VT_LPWSTR */

    propvar.vt = VT_LPWSTR;
    propvar.u.pwszVal = NULL;
    result = FUNC0(&propvar, default_value);
    FUNC4(result == default_value, "Unexpected value %s\n", FUNC5(result));

    propvar.vt = VT_LPWSTR;
    propvar.u.pwszVal = wstr_empty;
    result = FUNC0(&propvar, default_value);
    FUNC4(result == wstr_empty, "Unexpected value %s\n", FUNC5(result));

    propvar.vt = VT_LPWSTR;
    propvar.u.pwszVal = wstr_space;
    result = FUNC0(&propvar, default_value);
    FUNC4(result == wstr_space, "Unexpected value %s\n", FUNC5(result));

    propvar.vt = VT_LPWSTR;
    propvar.u.pwszVal = wstr_test2;
    result = FUNC0(&propvar, default_value);
    FUNC4(result == wstr_test2, "Unexpected value %s\n", FUNC5(result));

    /* VT_LPSTR */

    propvar.vt = VT_LPSTR;
    propvar.u.pszVal = NULL;
    result = FUNC0(&propvar, default_value);
    FUNC4(result == default_value, "Unexpected value %s\n", FUNC5(result));

    propvar.vt = VT_LPSTR;
    propvar.u.pszVal = str_empty;
    result = FUNC0(&propvar, default_value);
    FUNC4(result == default_value, "Unexpected value %s\n", FUNC5(result));

    propvar.vt = VT_LPSTR;
    propvar.u.pszVal = str_space;
    result = FUNC0(&propvar, default_value);
    FUNC4(result == default_value, "Unexpected value %s\n", FUNC5(result));

    propvar.vt = VT_LPSTR;
    propvar.u.pszVal = str_test2;
    result = FUNC0(&propvar, default_value);
    FUNC4(result == default_value, "Unexpected value %s\n", FUNC5(result));

    /* VT_BSTR */

    propvar.vt = VT_BSTR;
    propvar.u.bstrVal = NULL;
    result = FUNC0(&propvar, default_value);
    FUNC4(!FUNC3(result, wstr_empty), "Unexpected value %s\n", FUNC5(result));

    propvar.vt = VT_BSTR;
    propvar.u.bstrVal = FUNC1(wstr_empty);
    result = FUNC0(&propvar, default_value);
    FUNC4(!FUNC3(result, wstr_empty), "Unexpected value %s\n", FUNC5(result));
    FUNC2(propvar.u.bstrVal);

    propvar.vt = VT_BSTR;
    propvar.u.bstrVal = FUNC1(wstr_space);
    result = FUNC0(&propvar, default_value);
    FUNC4(!FUNC3(result, wstr_space), "Unexpected value %s\n", FUNC5(result));
    FUNC2(propvar.u.bstrVal);

    propvar.vt = VT_BSTR;
    propvar.u.bstrVal = FUNC1(wstr_test2);
    result = FUNC0(&propvar, default_value);
    FUNC4(!FUNC3(result, wstr_test2), "Unexpected value %s\n", FUNC5(result));
    FUNC2(propvar.u.bstrVal);
}
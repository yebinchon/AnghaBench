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
typedef  int /*<<< orphan*/  xmlreader ;
typedef  int /*<<< orphan*/  strval ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WC_E_DIGIT ; 
 int /*<<< orphan*/  WC_E_XMLDECL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HRESULT FUNC7(xmlreader *reader, strval *val)
{
    static const WCHAR onedotW[] = {'1','.',0};
    WCHAR *ptr, *ptr2;
    UINT start;

    if (FUNC2(reader, onedotW)) return WC_E_XMLDECL;

    start = FUNC3(reader);
    /* skip "1." */
    FUNC6(reader, 2);

    ptr2 = ptr = FUNC4(reader);
    while (*ptr >= '0' && *ptr <= '9')
    {
        FUNC6(reader, 1);
        ptr = FUNC4(reader);
    }

    if (ptr2 == ptr) return WC_E_DIGIT;
    FUNC5(start, FUNC3(reader)-start, val);
    FUNC0("version=%s\n", FUNC1(reader, val));
    return S_OK;
}
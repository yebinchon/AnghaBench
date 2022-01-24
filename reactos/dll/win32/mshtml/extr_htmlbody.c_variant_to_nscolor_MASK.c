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
typedef  int /*<<< orphan*/  nsAString ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
#define  VT_BSTR 129 
#define  VT_I4 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

BOOL FUNC7(const VARIANT *v, nsAString *nsstr)
{
    switch(FUNC3(v)) {
    case VT_BSTR:
        FUNC5(nsstr, FUNC1(v));
        return TRUE;

    case VT_I4: {
        PRUnichar buf[10];
        static const WCHAR formatW[] = {'#','%','x',0};

        FUNC6(buf, formatW, FUNC2(v));
        FUNC5(nsstr, buf);
        return TRUE;
    }

    default:
        FUNC0("invalid color %s\n", FUNC4(v));
    }

    return FALSE;

}
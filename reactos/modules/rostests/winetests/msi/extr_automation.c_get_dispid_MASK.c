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
typedef  int UINT ;
typedef  int /*<<< orphan*/ * LPOLESTR ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  int DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  IID_NULL ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ S_OK ; 

__attribute__((used)) static DISPID FUNC5( IDispatch *disp, const char *name )
{
    LPOLESTR str;
    UINT len;
    DISPID id = -1;
    HRESULT r;

    len = FUNC4(CP_ACP, 0, name, -1, NULL, 0 );
    str = FUNC1(FUNC0(), 0, len*sizeof(WCHAR) );
    if (str)
    {
        FUNC4(CP_ACP, 0, name, -1, str, len );
        r = FUNC3( disp, &IID_NULL, &str, 1, 0, &id );
        FUNC2(FUNC0(), 0, str);
        if (r != S_OK)
            return -1;
    }

    return id;
}
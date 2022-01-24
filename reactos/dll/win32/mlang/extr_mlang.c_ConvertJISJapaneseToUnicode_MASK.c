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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static UINT FUNC7(LPCSTR input, DWORD count,
                                        LPWSTR output, DWORD out_count)
{
    CHAR *sjis_string;
    UINT rc = 0;
    sjis_string = FUNC2(FUNC1(),0,count);
    rc = FUNC0(input,count,sjis_string);
    if (rc)
    {
        FUNC5("%s\n",FUNC6(sjis_string,rc));
        if (output)
            rc = FUNC4(932,0,sjis_string,rc,output,out_count);
        else
            rc = FUNC4(932,0,sjis_string,rc,0,0);
    }
    FUNC3(FUNC1(),0,sjis_string);
    return rc;

}
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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/ * LPCSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC8(LPCSTR input, DWORD count,
                                            LPWSTR output, DWORD out_count)
{
    CHAR *sjis_string;
    UINT rc = 0;
    int code = FUNC1(input,count);
    FUNC6("Japanese code %i\n",code);

    switch (code)
    {
    case 0:
        if (output)
            rc = FUNC5(CP_ACP,0,input,count,output,out_count);
        else
            rc = FUNC5(CP_ACP,0,input,count,0,0);
        break;

    case 932:
        if (output)
            rc = FUNC5(932,0,input,count,output,out_count);
        else
            rc = FUNC5(932,0,input,count,0,0);
        break;

    case 51932:
        if (output)
            rc = FUNC5(20932,0,input,count,output,out_count);
        else
            rc = FUNC5(20932,0,input,count,0,0);
        break;

    case 50220:
        sjis_string = FUNC3(FUNC2(),0,count);
        rc = FUNC0(input,count,sjis_string);
        if (rc)
        {
            FUNC6("%s\n",FUNC7(sjis_string,rc));
            if (output)
                rc = FUNC5(932,0,sjis_string,rc,output,out_count);
            else
                rc = FUNC5(932,0,sjis_string,rc,0,0);
        }
        FUNC4(FUNC2(),0,sjis_string);
        break;
    }
    return rc;
}
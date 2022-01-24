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
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC7(LPCWSTR input, DWORD count,
                                        LPSTR output, DWORD out_count)
{
    CHAR *sjis_string;
    INT len;
    UINT rc = 0;

    len = FUNC5(932,0,input,count,0,0,NULL,NULL);
    sjis_string = FUNC2(FUNC1(),0,len);
    FUNC5(932,0,input,count,sjis_string,len,NULL,NULL);
    FUNC4("%s\n",FUNC6(sjis_string,len));

    rc = FUNC0(sjis_string, len, NULL);
    if (out_count >= rc)
    {
        FUNC0(sjis_string, len, output);
    }
    FUNC3(FUNC1(),0,sjis_string);
    return rc;

}
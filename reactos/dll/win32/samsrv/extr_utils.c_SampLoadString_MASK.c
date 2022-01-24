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
typedef  scalar_t__ WCHAR ;
typedef  int UINT ;
typedef  scalar_t__* LPWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  int /*<<< orphan*/  HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ RT_STRING ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,int) ; 
 int FUNC6 (int,scalar_t__) ; 

INT
FUNC7(HINSTANCE hInstance,
               UINT uId,
               LPWSTR lpBuffer,
               INT nBufferMax)
{
    HGLOBAL hmem;
    HRSRC hrsrc;
    WCHAR *p;
    int string_num;
    int i;

    /* Use loword (incremented by 1) as resourceid */
    hrsrc = FUNC0(hInstance,
                          FUNC4((FUNC1(uId) >> 4) + 1),
                          (LPWSTR)RT_STRING);
    if (!hrsrc)
        return 0;

    hmem = FUNC2(hInstance, hrsrc);
    if (!hmem)
        return 0;

    p = FUNC3(hmem);
    string_num = uId & 0x000f;
    for (i = 0; i < string_num; i++)
        p += *p + 1;

    i = FUNC6(nBufferMax - 1, *p);
    if (i > 0)
    {
        FUNC5(lpBuffer, p + 1, i * sizeof(WCHAR));
        lpBuffer[i] = 0;
    }
    else
    {
        if (nBufferMax > 1)
        {
            lpBuffer[0] = 0;
            return 0;
        }
    }

    return i;
}
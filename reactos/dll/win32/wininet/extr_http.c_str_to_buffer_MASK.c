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
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__ const*) ; 
 int FUNC2 (scalar_t__ const*) ; 

__attribute__((used)) static DWORD FUNC3(const WCHAR *str, void *buffer, DWORD *size, BOOL unicode)
{
    int len;
    if (unicode)
    {
        WCHAR *buf = buffer;

        if (str) len = FUNC2(str);
        else len = 0;
        if (*size < (len + 1) * sizeof(WCHAR))
        {
            *size = (len + 1) * sizeof(WCHAR);
            return ERROR_INSUFFICIENT_BUFFER;
        }
        if (str) FUNC1(buf, str);
        else buf[0] = 0;

        *size = len;
        return ERROR_SUCCESS;
    }
    else
    {
        char *buf = buffer;

        if (str) len = FUNC0(CP_ACP, 0, str, -1, NULL, 0, NULL, NULL);
        else len = 1;
        if (*size < len)
        {
            *size = len;
            return ERROR_INSUFFICIENT_BUFFER;
        }
        if (str) FUNC0(CP_ACP, 0, str, -1, buf, *size, NULL, NULL);
        else buf[0] = 0;

        *size = len - 1;
        return ERROR_SUCCESS;
    }
}
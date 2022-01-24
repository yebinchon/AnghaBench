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
typedef  int DWORD ;

/* Variables and functions */
 int ISMEX_CALLBACK ; 
 int ISMEX_NOSEND ; 
 int ISMEX_NOTIFY ; 
 int ISMEX_REPLIED ; 
 int ISMEX_SEND ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static const char *
FUNC3(void)
{
    static char s_buf[128];
    DWORD dwRet = FUNC0(NULL);
    if (dwRet == ISMEX_NOSEND)
    {
        FUNC2(s_buf, "ISMEX_NOSEND,");
        return s_buf;
    }
    s_buf[0] = 0;
    if (dwRet & ISMEX_CALLBACK)
        FUNC1(s_buf, "ISMEX_CALLBACK,");
    if (dwRet & ISMEX_NOTIFY)
        FUNC1(s_buf, "ISMEX_NOTIFY,");
    if (dwRet & ISMEX_REPLIED)
        FUNC1(s_buf, "ISMEX_REPLIED,");
    if (dwRet & ISMEX_SEND)
        FUNC1(s_buf, "ISMEX_SEND,");
    return s_buf;
}
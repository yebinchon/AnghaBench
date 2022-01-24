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
typedef  int /*<<< orphan*/  buf ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (char const*,void*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC3(const char *url)
{
    static char buf[10000];
    DWORD size = sizeof(buf);
    BOOL ret;

    ret = FUNC1(url, (void*)buf, &size);
    FUNC2(ret || FUNC0() == ERROR_FILE_NOT_FOUND, "GetUrlCacheEntryInfoA returned %x (%u)\n", ret, FUNC0());

    return ret;
}
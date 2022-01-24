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
typedef  int /*<<< orphan*/  zero_byte ;
typedef  int /*<<< orphan*/  FILETIME ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  NORMAL_CACHE_ENTRY ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    char filename[MAX_PATH];
    BYTE zero_byte = 0;
    BOOL ret;

    static const FILETIME filetime_zero;
    static char url_with_slash[] = "http://testing.cache.com/";


    ret = FUNC1(url_with_slash, 0, "html", filename, 0);
    FUNC7(ret, "CreateUrlCacheEntry failed with error %d\n", FUNC4());

    FUNC6(filename, &zero_byte, sizeof(zero_byte));

    ret = FUNC0("Visited: http://testing.cache.com/", NULL, filetime_zero, filetime_zero,
            NORMAL_CACHE_ENTRY, NULL, 0, "html", NULL);
    FUNC7(ret, "CommitUrlCacheEntry failed with error %d\n", FUNC4());

    FUNC7(FUNC5("Visited: http://testing.cache.com/"), "cache entry does not exist\n");
    FUNC7(!FUNC5("Visited: http://testing.cache.com"), "cache entry exists\n");

    ret = FUNC3("Visited: http://testing.cache.com/");
    FUNC7(ret, "DeleteCacheEntryA failed\n");
    FUNC2(filename);
}
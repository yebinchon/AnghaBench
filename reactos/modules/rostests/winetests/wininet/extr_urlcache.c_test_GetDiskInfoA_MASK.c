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
typedef  int /*<<< orphan*/  DWORDLONG ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_PATH_NOT_FOUND ; 
 int FUNC0 (char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 scalar_t__ old_ie ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    BOOL ret;
    DWORD error, cluster_size;
    DWORDLONG free, total;
    char path[MAX_PATH], *p;

    FUNC2(path, MAX_PATH);
    if ((p = FUNC6(path, '\\'))) *++p = 0;

    ret = FUNC0(path, &cluster_size, &free, &total);
    FUNC5(ret, "GetDiskInfoA failed %u\n", FUNC1());

    ret = FUNC0(path, &cluster_size, &free, NULL);
    FUNC5(ret, "GetDiskInfoA failed %u\n", FUNC1());

    ret = FUNC0(path, &cluster_size, NULL, NULL);
    FUNC5(ret, "GetDiskInfoA failed %u\n", FUNC1());

    ret = FUNC0(path, NULL, NULL, NULL);
    FUNC5(ret, "GetDiskInfoA failed %u\n", FUNC1());

    FUNC3(0xdeadbeef);
    FUNC7(p, "\\non\\existing\\path");
    ret = FUNC0(path, NULL, NULL, NULL);
    error = FUNC1();
    FUNC5(!ret ||
       FUNC4(old_ie && ret), /* < IE7 */
       "GetDiskInfoA succeeded\n");
    FUNC5(error == ERROR_PATH_NOT_FOUND ||
       FUNC4(old_ie && error == 0xdeadbeef), /* < IE7 */
       "got %u expected ERROR_PATH_NOT_FOUND\n", error);

    FUNC3(0xdeadbeef);
    ret = FUNC0(NULL, NULL, NULL, NULL);
    error = FUNC1();
    FUNC5(!ret, "GetDiskInfoA succeeded\n");
    FUNC5(error == ERROR_INVALID_PARAMETER, "got %u expected ERROR_INVALID_PARAMETER\n", error);
}
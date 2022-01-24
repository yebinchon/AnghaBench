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
typedef  int WCHAR ;
typedef  int UINT ;
typedef  char CHAR ;

/* Variables and functions */
 int FUNC0 (unsigned int,char*,int) ; 
 int FUNC1 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
    WCHAR buf[1024], buf2[1024];
    char bufa[1024];
    void *ptr;
    UINT ret, ret2;
    int i;

    ret2 = FUNC1(0, NULL, 1024);
    FUNC3(ret2, "GetStateText failed\n");

    ptr = NULL;
    ret = FUNC1(0, (WCHAR*)&ptr, 0);
    FUNC3(ret == ret2, "got %d, expected %d\n", ret, ret2);
    FUNC3(ptr != NULL, "ptr was not changed\n");

    ret = FUNC1(0, buf, 1024);
    FUNC3(ret == ret2, "got %d, expected %d\n", ret, ret2);
    FUNC3(!FUNC2(buf, ptr, ret*sizeof(WCHAR)), "got %s, expected %s\n",
            FUNC4(buf, ret), FUNC4(ptr, ret));

    ret = FUNC1(0, buf, 1);
    FUNC3(!ret, "got %d, expected 0\n", ret);
    FUNC3(!buf[0], "buf[0] = '%c'\n", buf[0]);

    for(i=0; i<31; i++) {
        ret = FUNC1(1<<i, buf, 1024);
        FUNC3(ret, "%d) GetStateText failed\n", i);
    }
    ret = FUNC1(1u<<31, buf, 1024);
    FUNC3(!ret, "31) GetStateText succeeded: %d\n", ret);

    ret = FUNC1(2, buf, 1024);
    FUNC3(ret, "GetStateText failed\n");
    ret2 = FUNC1(3, buf2, 1024);
    FUNC3(ret2, "GetStateText failed\n");
    FUNC3(ret == ret2, "got %d, expected %d\n", ret2, ret);
    FUNC3(!FUNC2(buf, buf2, ret*sizeof(WCHAR)),
            "GetStateText(2,...) returned different data than GetStateText(3,...)\n");

    ret2 = FUNC0(0, NULL, 1024);
    FUNC3(ret2, "GetStateText failed\n");

    ptr = NULL;
    ret = FUNC0(0, (CHAR*)&ptr, 0);
    FUNC3(!ret, "got %d\n", ret);
    FUNC3(ptr == NULL, "ptr was changed\n");

    ret = FUNC0(0, NULL, 0);
    FUNC3(ret == ret2, "got %d, expected %d\n", ret, ret2);

    ret = FUNC0(0, bufa, 1024);
    FUNC3(ret == ret2, "got %d, expected %d\n", ret, ret2);

    ret = FUNC0(0, bufa, 1);
    FUNC3(!ret, "got %d, expected 0\n", ret);
    FUNC3(!bufa[0], "bufa[0] = '%c'\n", bufa[0]);

    for(i=0; i<31; i++) {
        ret = FUNC0(1<<i, bufa, 1024);
        FUNC3(ret, "%d) GetStateText failed\n", i);
    }
    ret = FUNC0(1u<<31, bufa, 1024);
    FUNC3(!ret, "31) GetStateText succeeded: %d\n", ret);
}
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
typedef  int UINT ;

/* Variables and functions */
 int FUNC0 (char*,int) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    UINT len, len_with_null;
    char buf[MAX_PATH];

    len_with_null = FUNC0(NULL, 0);
    FUNC3(len_with_null <= MAX_PATH, "should fit into MAX_PATH\n");

    FUNC2(buf, "foo");
    len = FUNC0(buf, 1);
    FUNC3(FUNC1(buf, "foo") == 0, "should not touch the buffer\n");
    FUNC3(len == len_with_null, "GetSystemDirectoryA returned %d, expected %d\n",
       len, len_with_null);

    FUNC2(buf, "foo");
    len = FUNC0(buf, len_with_null - 1);
    FUNC3(FUNC1(buf, "foo") == 0, "should not touch the buffer\n");
    FUNC3(len == len_with_null, "GetSystemDirectoryA returned %d, expected %d\n",
       len, len_with_null);

    FUNC2(buf, "foo");
    len = FUNC0(buf, len_with_null);
    FUNC3(FUNC1(buf, "foo") != 0, "should touch the buffer\n");
    FUNC3(len == FUNC4(buf), "returned length should be equal to the length of string\n");
    FUNC3(len == len_with_null-1, "GetSystemDirectoryW returned %d, expected %d\n",
       len, len_with_null-1);
}
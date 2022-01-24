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

/* Variables and functions */
 int /*<<< orphan*/  charcomparefunc ; 
 int /*<<< orphan*/  intcomparefunc ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  strcomparefunc ; 

__attribute__((used)) static void FUNC3(void)
{
    int arr[5] = { 23, 42, 8, 4, 16 };
    char carr[5] = { 42, 23, 4, 8, 16 };
    const char *strarr[7] = {
	"Hello",
	"Wine",
	"World",
	"!",
	"Hopefully",
	"Sorted",
	"."
    };

    FUNC1 ((void*)arr, 0, sizeof(int), intcomparefunc);
    FUNC0(arr[0] == 23, "badly sorted, nmemb=0, arr[0] is %d\n", arr[0]);
    FUNC0(arr[1] == 42, "badly sorted, nmemb=0, arr[1] is %d\n", arr[1]);
    FUNC0(arr[2] == 8,  "badly sorted, nmemb=0, arr[2] is %d\n", arr[2]);
    FUNC0(arr[3] == 4,  "badly sorted, nmemb=0, arr[3] is %d\n", arr[3]);
    FUNC0(arr[4] == 16, "badly sorted, nmemb=0, arr[4] is %d\n", arr[4]);

    FUNC1 ((void*)arr, 1, sizeof(int), intcomparefunc);
    FUNC0(arr[0] == 23, "badly sorted, nmemb=1, arr[0] is %d\n", arr[0]);
    FUNC0(arr[1] == 42, "badly sorted, nmemb=1, arr[1] is %d\n", arr[1]);
    FUNC0(arr[2] == 8,  "badly sorted, nmemb=1, arr[2] is %d\n", arr[2]);
    FUNC0(arr[3] == 4,  "badly sorted, nmemb=1, arr[3] is %d\n", arr[3]);
    FUNC0(arr[4] == 16, "badly sorted, nmemb=1, arr[4] is %d\n", arr[4]);

    FUNC1 ((void*)arr, 5, 0, intcomparefunc);
    FUNC0(arr[0] == 23, "badly sorted, size=0, arr[0] is %d\n", arr[0]);
    FUNC0(arr[1] == 42, "badly sorted, size=0, arr[1] is %d\n", arr[1]);
    FUNC0(arr[2] == 8,  "badly sorted, size=0, arr[2] is %d\n", arr[2]);
    FUNC0(arr[3] == 4,  "badly sorted, size=0, arr[3] is %d\n", arr[3]);
    FUNC0(arr[4] == 16, "badly sorted, size=0, arr[4] is %d\n", arr[4]);

    FUNC1 ((void*)arr, 5, sizeof(int), intcomparefunc);
    FUNC0(arr[0] == 4,  "badly sorted, arr[0] is %d\n", arr[0]);
    FUNC0(arr[1] == 8,  "badly sorted, arr[1] is %d\n", arr[1]);
    FUNC0(arr[2] == 16, "badly sorted, arr[2] is %d\n", arr[2]);
    FUNC0(arr[3] == 23, "badly sorted, arr[3] is %d\n", arr[3]);
    FUNC0(arr[4] == 42, "badly sorted, arr[4] is %d\n", arr[4]);

    FUNC1 ((void*)carr, 5, sizeof(char), charcomparefunc);
    FUNC0(carr[0] == 4,  "badly sorted, carr[0] is %d\n", carr[0]);
    FUNC0(carr[1] == 8,  "badly sorted, carr[1] is %d\n", carr[1]);
    FUNC0(carr[2] == 16, "badly sorted, carr[2] is %d\n", carr[2]);
    FUNC0(carr[3] == 23, "badly sorted, carr[3] is %d\n", carr[3]);
    FUNC0(carr[4] == 42, "badly sorted, carr[4] is %d\n", carr[4]);

    FUNC1 ((void*)strarr, 7, sizeof(char*), strcomparefunc);
    FUNC0(!FUNC2(strarr[0],"!"),  "badly sorted, strarr[0] is %s\n", strarr[0]);
    FUNC0(!FUNC2(strarr[1],"."),  "badly sorted, strarr[1] is %s\n", strarr[1]);
    FUNC0(!FUNC2(strarr[2],"Hello"),  "badly sorted, strarr[2] is %s\n", strarr[2]);
    FUNC0(!FUNC2(strarr[3],"Hopefully"),  "badly sorted, strarr[3] is %s\n", strarr[3]);
    FUNC0(!FUNC2(strarr[4],"Sorted"),  "badly sorted, strarr[4] is %s\n", strarr[4]);
    FUNC0(!FUNC2(strarr[5],"Wine"),  "badly sorted, strarr[5] is %s\n", strarr[5]);
    FUNC0(!FUNC2(strarr[6],"World"),  "badly sorted, strarr[6] is %s\n", strarr[6]);
}
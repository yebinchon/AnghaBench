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
typedef  int /*<<< orphan*/  arr ;

/* Variables and functions */
 int /*<<< orphan*/  intcomparefunc ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int* FUNC1 (int*,int*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
    int arr[7] = { 1, 3, 4, 8, 16, 23, 42 };
    int *x, l, i, j;

    /* just try all array sizes */
    for (j=1;j<sizeof(arr)/sizeof(arr[0]);j++) {
        for (i=0;i<j;i++) {
            l = arr[i];
            x = FUNC1 (&l, arr, j, sizeof(arr[0]), intcomparefunc);
            FUNC0 (x == &arr[i], "bsearch did not find %d entry in loopsize %d.\n", i, j);
        }
        l = 4242;
        x = FUNC1 (&l, arr, j, sizeof(arr[0]), intcomparefunc);
        FUNC0 (x == NULL, "bsearch did find 4242 entry in loopsize %d.\n", j);
    }
}
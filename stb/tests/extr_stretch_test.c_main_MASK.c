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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 

int FUNC5(int arg, char **argv)
{
   int i;
   int *arr = NULL;

   for (i=0; i < 1000000; ++i)
      FUNC4(arr, i);

   FUNC0(FUNC2(arr) == 1000000);
   for (i=0; i < 1000000; ++i)
      FUNC0(arr[i] == i);

   FUNC3(arr);
   arr = NULL;

   for (i=0; i < 1000; ++i)
      FUNC1(arr, 1000);
   FUNC0(FUNC2(arr) == 1000000);

   return 0;
}
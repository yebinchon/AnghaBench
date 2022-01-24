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
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int FUNC1 (int*,int,int,char*) ; 

int *FUNC2(int count, char *str)
{
   int n = FUNC1(NULL,0,count,str);
   int *z = NULL;
   FUNC0(z, n*2);
   FUNC1(z, n, count, str);
   return z;
}
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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 scalar_t__ FUNC2 (char*) ; 

char *FUNC3(char *t, int n)
{
   char *a;
   int z = (int) FUNC2(t);
   if (z < n) n = z;
   a = (char *) FUNC0(n+1);
   FUNC1(a,n+1,t,n);
   a[n] = 0;
   return a;
}
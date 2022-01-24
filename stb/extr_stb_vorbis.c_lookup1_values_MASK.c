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
 int FUNC0 (float) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (float) ; 
 int FUNC3 (float,int) ; 

__attribute__((used)) static int FUNC4(int entries, int dim)
{
   int r = (int) FUNC1(FUNC0((float) FUNC2((float) entries) / dim));
   if ((int) FUNC1(FUNC3((float) r+1, dim)) <= entries)   // (int) cast for MinGW warning;
      ++r;                                              // floor() to avoid _ftol() when non-CRT
   if (FUNC3((float) r+1, dim) <= entries)
      return -1;
   if ((int) FUNC1(FUNC3((float) r, dim)) > entries)
      return -1;
   return r;
}
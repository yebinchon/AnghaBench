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
 int STB_FALSE ; 
 int STB_TRUE ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 

int FUNC1(char *dir, int dirlen, char *file)
{
   if (dirlen == 0) return STB_TRUE;
   if (FUNC0(dir, file, dirlen)) return STB_FALSE;
   if (file[dirlen] == '/' || file[dirlen] == '\\') return STB_TRUE;
   return STB_FALSE;
}
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
 int STB_FILE ; 
 int STB_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

char *FUNC3(char *output, char *src, char *ext)
{
   char buffer[4096];
   FUNC1(buffer, src, STB_PATH | STB_FILE);
   if (ext)
      FUNC0(output, "%s.%s", buffer, ext[0] == '.' ? ext+1 : ext);
   else
      FUNC2(output, buffer);
   return output;
}
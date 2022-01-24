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
 int /*<<< orphan*/ * FUNC0 (char*,char) ; 

__attribute__((used)) static char *FUNC1(char *output, char *src, char *delimit, int keep, int invert)
{
   if (invert) {
      while (*src && FUNC0(delimit, *src) != NULL) {
         *output++ = *src++;
      }
   } else {
      while (*src && FUNC0(delimit, *src) == NULL) {
         *output++ = *src++;
      }
   }
   *output = 0;
   if (keep)
      return src;
   else
      return *src ? src+1 : src;
}
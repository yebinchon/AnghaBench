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
 int FUNC0 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,char) ; 

int FUNC3(char *expr, char *candidate, int search, int insensitive)
{
   char buffer[256];
   // handle multiple search strings
   char *s = FUNC2(expr, ';');
   char *last = expr;
   while (s) {
      int z;
      // need to allow for non-writeable strings... assume they're small
      if (s - last < 256) {
         FUNC1(buffer, last, (int) (s-last+1));
         z = FUNC0(buffer, candidate, search, insensitive);
      } else {
         *s = 0;
         z = FUNC0(last, candidate, search, insensitive);
         *s = ';';
      }
      if (z >= 0) return z;
      last = s+1;
      s = FUNC2(last, ';');
   }
   return FUNC0(last, candidate, search, insensitive);
}
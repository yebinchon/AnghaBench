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
 scalar_t__ FUNC0 (char*,char*,int,int) ; 
 char FUNC1 (char) ; 

__attribute__((used)) static int FUNC2(char *candidate, char *qstring, int qlen, int insensitive)
{
   char c;

   int offset=0;
   while (*qstring == '?') {
      ++qstring;
      --qlen;
      ++candidate;
      if (qlen == 0) return 0;
      if (*candidate == 0) return -1;
   }

   c = *qstring++;
   --qlen;
   if (insensitive) c = FUNC1(c);

   while (candidate[offset]) {
      if (c == (insensitive ? FUNC1(candidate[offset]) : candidate[offset]))
         if (FUNC0(candidate+offset+1, qstring, qlen, insensitive))
            return offset;
      ++offset;
   }

   return -1;
}
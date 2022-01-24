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
typedef  int stb_uint16 ;
typedef  int /*<<< orphan*/  stb_matcher ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char) ; 
 int FUNC4 (char) ; 

__attribute__((used)) static char *FUNC5(stb_matcher *matcher, int start, char *str, stb_uint16 *end)
{
   int n;
   stb_uint16 last_end;

   last_end = FUNC2(matcher);
   FUNC1(matcher, start, last_end);

   while (*str) {
      switch (*str) {
            // fallthrough
         default: // match exactly this character
            n = FUNC2(matcher);
            if (FUNC4(*str) == FUNC3(*str)) {
               FUNC0(matcher, last_end, n, *str);
            } else {
               FUNC0(matcher, last_end, n, FUNC3(*str));
               FUNC0(matcher, last_end, n, FUNC4(*str));
            }
            last_end = n;
            ++str;
            break;

         case '?':
            n = FUNC2(matcher);
            FUNC0(matcher, last_end, n, -1);
            last_end = n;
            ++str;
            break;

         case '*':
            n = FUNC2(matcher);
            FUNC0(matcher, last_end, n, -1);
            FUNC1(matcher, last_end, n);
            FUNC1(matcher, n, last_end);
            last_end = n;
            ++str;
            break;
      }
   }

   // now require end of string to match
   n = FUNC2(matcher);
   FUNC0(matcher, last_end, n, 0);
   last_end = n;

   *end = last_end;
   return str;
}
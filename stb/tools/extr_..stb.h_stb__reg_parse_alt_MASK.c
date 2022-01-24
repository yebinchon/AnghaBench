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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,char*,int*) ; 

__attribute__((used)) static char *FUNC4(stb_matcher *matcher, int start, char *regex, stb_uint16 *end)
{
   stb_uint16 last_end = start;
   stb_uint16 main_end;

   int head, tail;

   head = FUNC2(matcher);
   FUNC1(matcher, start, head);

   regex = FUNC3(matcher, head, regex, &last_end);
   if (regex == NULL) return NULL;
   if (*regex == 0 || *regex == ')') {
      *end = last_end;
      return regex;
   }

   main_end = last_end;
   tail = FUNC2(matcher);

   FUNC1(matcher, last_end, tail);

   // start alternatives from the same starting node; use epsilon
   // transitions to combine their endings
   while(*regex && *regex != ')') {
      FUNC0(*regex == '|');
      head = FUNC2(matcher);
      FUNC1(matcher, start, head);
      regex = FUNC3(matcher, head, regex+1, &last_end);
      if (regex == NULL)
         return NULL;
      FUNC1(matcher, last_end, tail);
   }

   *end = tail;
   return regex;
}
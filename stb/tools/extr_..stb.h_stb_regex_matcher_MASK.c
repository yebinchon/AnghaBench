#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ stb_uint16 ;
struct TYPE_8__ {int match_start; TYPE_1__* nodes; int /*<<< orphan*/  start_node; } ;
typedef  TYPE_2__ stb_matcher ;
struct TYPE_7__ {int /*<<< orphan*/  goal; } ;

/* Variables and functions */
 int /*<<< orphan*/  STB__NFA_STOP_GOAL ; 
 TYPE_2__* FUNC0 () ; 
 char* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

stb_matcher *FUNC3(char *regex)
{
   char *z;
   stb_uint16 end;
   stb_matcher *matcher = FUNC0();
   if (*regex == '^') {
      matcher->match_start = 1;
      ++regex;
   }

   z = FUNC1(matcher, matcher->start_node, regex, &end);

   if (!z || *z) {
      FUNC2(matcher);
      return NULL;
   }

   ((matcher->nodes)[(int) end]).goal = STB__NFA_STOP_GOAL;

   return matcher;
}
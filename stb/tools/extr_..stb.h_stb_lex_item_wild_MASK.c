#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ stb_uint16 ;
struct TYPE_7__ {TYPE_1__* nodes; int /*<<< orphan*/  start_node; } ;
typedef  TYPE_2__ stb_matcher ;
struct TYPE_6__ {int goal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,scalar_t__*) ; 

int FUNC2(stb_matcher *matcher, const char *regex, int result)
{
   char *z;
   stb_uint16 end;

   z = FUNC1(matcher, matcher->start_node, (char*) regex, &end);

   if (z == NULL)
      return 0;

   FUNC0(matcher);

   matcher->nodes[(int) end].goal = result;
   return 1;
}
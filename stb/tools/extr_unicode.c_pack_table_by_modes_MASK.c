#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ input; int inherited_storage; int input_size; int length; } ;
typedef  TYPE_1__ table ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

int FUNC2(table *t, int *modes)
{
   table s = *t;
   while (*modes > -1) {
      table newtab;
      newtab = FUNC0(&s, *modes, 0);
      if (s.input != t->input)
         FUNC1(s.input);
      s = newtab;
      ++modes;
   }
   return s.inherited_storage + s.input_size * s.length;
}
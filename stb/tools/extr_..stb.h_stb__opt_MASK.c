#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* out; int* eps; scalar_t__ goal; } ;
typedef  TYPE_1__ stb_nfa_node ;
struct TYPE_5__ {TYPE_1__* nodes; } ;
typedef  TYPE_2__ stb_matcher ;

/* Variables and functions */
 int FUNC0 (int*) ; 

__attribute__((used)) static int FUNC1(stb_matcher *m, int n)
{
   for(;;) {
      stb_nfa_node *p = &m->nodes[n];
      if (p->goal)                  return n;
      if (FUNC0(p->out))      return n;
      if (FUNC0(p->eps) != 1) return n;
      n = p->eps[0];
   }
}
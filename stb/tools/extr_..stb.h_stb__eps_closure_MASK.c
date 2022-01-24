#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ stb_uint16 ;
struct TYPE_6__ {TYPE_1__* nodes; } ;
typedef  TYPE_2__ stb_matcher ;
struct TYPE_5__ {scalar_t__* eps; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (TYPE_2__*,scalar_t__*,scalar_t__) ; 
 int FUNC1 (scalar_t__*) ; 

__attribute__((used)) static stb_uint16 * FUNC2(stb_matcher *m, stb_uint16 *list)
{
   int i,n = FUNC1(list);

   for(i=0; i < n; ++i) {
      stb_uint16 *e = m->nodes[(int) list[i]].eps;
      if (e) {
         int j,k = FUNC1(e);
         for (j=0; j < k; ++j)
            list = FUNC0(m, list, e[j]);
         n = FUNC1(list);
      }
   }

   return list;
}
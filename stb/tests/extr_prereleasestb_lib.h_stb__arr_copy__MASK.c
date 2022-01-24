#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void stb__arr ;
struct TYPE_3__ {int limit; int len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 TYPE_1__* FUNC3 (void*) ; 

void * FUNC4(void *p, int elem_size)
{
   stb__arr *q;
   if (p == NULL) return p;
   q = (stb__arr *) FUNC0(sizeof(*q) + elem_size * FUNC3(p)->limit);
   FUNC2(p);
   FUNC1(q, FUNC3(p), sizeof(*q) + elem_size * FUNC3(p)->len);
   return q+1;
}
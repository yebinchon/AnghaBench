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
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__** prevn; } ;
typedef  TYPE_1__ stb__nochildren ;
struct TYPE_8__ {TYPE_1__* child; } ;
typedef  TYPE_2__ stb__alloc ;

/* Variables and functions */
 TYPE_1__*** FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(stb__alloc *src, stb__nochildren *s)
{
   s->prevn = &src->child;
   s->next  = src->child;
   src->child = s+1;
   if (s->next)
      *FUNC0(s->next) = &s->next;
}
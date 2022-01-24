#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * arena; } ;
typedef  TYPE_1__ stb_sdict ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 

stb_sdict * FUNC2(int use_arena)
{
   stb_sdict *d = FUNC1();
   if (d == NULL) return NULL;
   d->arena = use_arena ? FUNC0(1) : NULL;
   return d;
}
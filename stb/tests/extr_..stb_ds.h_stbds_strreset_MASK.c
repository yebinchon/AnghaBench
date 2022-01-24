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
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_1__ stbds_string_block ;
struct TYPE_7__ {TYPE_1__* storage; } ;
typedef  TYPE_2__ stbds_string_arena ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC2(stbds_string_arena *a)
{
  stbds_string_block *x,*y;
  x = a->storage;
  while (x) {
    y = x->next;
    FUNC0(NULL, x);
    x = y;
  }
  FUNC1(a, 0, sizeof(*a));
}
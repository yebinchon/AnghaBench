#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  TYPE_2__* msegmentptr ;
struct TYPE_4__ {char* base; size_t size; struct TYPE_4__* next; } ;
struct TYPE_3__ {TYPE_2__ seg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 

void FUNC1(void *msp)
{
  mstate ms = (mstate)msp;
  msegmentptr sp = &ms->seg;
  while (sp != 0) {
    char *base = sp->base;
    size_t size = sp->size;
    sp = sp->next;
    FUNC0(base, size);
  }
}
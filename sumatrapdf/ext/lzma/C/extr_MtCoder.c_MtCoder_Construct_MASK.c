#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  cs; } ;
struct TYPE_9__ {TYPE_1__ mtProgress; int /*<<< orphan*/  cs; TYPE_2__* threads; scalar_t__ alloc; } ;
struct TYPE_8__ {unsigned int index; } ;
typedef  TYPE_2__ CMtThread ;
typedef  TYPE_3__ CMtCoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int NUM_MT_CODER_THREADS_MAX ; 

void FUNC2(CMtCoder* p)
{
  unsigned i;
  p->alloc = 0;
  for (i = 0; i < NUM_MT_CODER_THREADS_MAX; i++)
  {
    CMtThread *t = &p->threads[i];
    t->index = i;
    FUNC0(t, p);
  }
  FUNC1(&p->cs);
  FUNC1(&p->mtProgress.cs);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  mtCoder; TYPE_1__* coders; TYPE_2__* allocBig; TYPE_2__* alloc; scalar_t__ outBuf; int /*<<< orphan*/  props; } ;
struct TYPE_10__ {scalar_t__ (* Alloc ) (TYPE_2__*,int) ;} ;
struct TYPE_9__ {scalar_t__ enc; } ;
typedef  TYPE_2__ ISzAlloc ;
typedef  TYPE_3__* CLzma2EncHandle ;
typedef  TYPE_3__ CLzma2Enc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int NUM_MT_CODER_THREADS_MAX ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 

CLzma2EncHandle FUNC4(ISzAlloc *alloc, ISzAlloc *allocBig)
{
  CLzma2Enc *p = (CLzma2Enc *)alloc->Alloc(alloc, sizeof(CLzma2Enc));
  if (p == 0)
    return NULL;
  FUNC0(&p->props);
  FUNC1(&p->props);
  p->outBuf = 0;
  p->alloc = alloc;
  p->allocBig = allocBig;
  {
    unsigned i;
    for (i = 0; i < NUM_MT_CODER_THREADS_MAX; i++)
      p->coders[i].enc = 0;
  }
  #ifndef _7ZIP_ST
  FUNC2(&p->mtCoder);
  #endif

  return p;
}
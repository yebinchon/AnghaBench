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
typedef  size_t UInt32 ;
struct TYPE_4__ {size_t NumCoders; int /*<<< orphan*/ * UnpackSizes; int /*<<< orphan*/ * PackStreams; int /*<<< orphan*/ * BindPairs; int /*<<< orphan*/ * Coders; } ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  TYPE_1__ CSzFolder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(CSzFolder *p, ISzAlloc *alloc)
{
  UInt32 i;
  if (p->Coders)
    for (i = 0; i < p->NumCoders; i++)
      FUNC1(&p->Coders[i], alloc);
  FUNC0(alloc, p->Coders);
  FUNC0(alloc, p->BindPairs);
  FUNC0(alloc, p->PackStreams);
  FUNC0(alloc, p->UnpackSizes);
  FUNC2(p);
}
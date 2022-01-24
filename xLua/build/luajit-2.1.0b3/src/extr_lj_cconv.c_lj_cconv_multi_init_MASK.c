#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ctypeid; } ;
struct TYPE_5__ {int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(CTState *cts, CType *d, TValue *o)
{
  if (!(FUNC1(d->info) || FUNC2(d->info)))
    return 0;  /* Destination is not an aggregate. */
  if (FUNC6(o) || (FUNC5(o) && !FUNC2(d->info)))
    return 0;  /* Initializer is not a value. */
  if (FUNC4(o) && FUNC3(cts, FUNC0(o)->ctypeid) == d)
    return 0;  /* Source and destination are identical aggregates. */
  return 1;  /* Otherwise the initializer is a value. */
}
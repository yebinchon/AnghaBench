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
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TString ;
typedef  unsigned int TMS ;

/* Variables and functions */
 unsigned int TM_EQ ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 

const TValue *FUNC4 (Table *events, TMS event, TString *ename) {
  const TValue *tm = FUNC1(events, ename);
  FUNC2(event <= TM_EQ);
  if (FUNC3(tm)) {  /* no tag method? */
    events->flags |= FUNC0(1u<<event);  /* cache this fact */
    return NULL;
  }
  else return tm;
}
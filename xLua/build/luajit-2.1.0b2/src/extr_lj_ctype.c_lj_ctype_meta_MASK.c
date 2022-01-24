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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_9__ {int /*<<< orphan*/  strempty; } ;
struct TYPE_8__ {TYPE_3__* g; int /*<<< orphan*/  miscmap; } ;
struct TYPE_7__ {int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  MMS ;
typedef  scalar_t__ CTypeID ;
typedef  TYPE_1__ CType ;
typedef  TYPE_2__ CTState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

cTValue *FUNC12(CTState *cts, CTypeID id, MMS mm)
{
  CType *ct = FUNC1(cts, id);
  cTValue *tv;
  while (FUNC2(ct->info) || FUNC5(ct->info)) {
    id = FUNC0(ct->info);
    ct = FUNC1(cts, id);
  }
  if (FUNC4(ct->info) &&
      FUNC3(FUNC1(cts, FUNC0(ct->info))->info))
    tv = FUNC7(cts->miscmap, &cts->g->strempty);
  else
    tv = FUNC6(cts->miscmap, -(int32_t)id);
  if (tv && FUNC11(tv) &&
      (tv = FUNC7(FUNC9(tv), FUNC8(cts->g, mm))) && !FUNC10(tv))
    return tv;
  return NULL;
}
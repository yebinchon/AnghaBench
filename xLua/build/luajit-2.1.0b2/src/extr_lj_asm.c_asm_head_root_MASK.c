#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_10__ {int /*<<< orphan*/  framesize; } ;
struct TYPE_13__ {TYPE_1__ pt; } ;
struct TYPE_12__ {TYPE_2__* T; } ;
struct TYPE_11__ {int /*<<< orphan*/  startpt; int /*<<< orphan*/  topslot; scalar_t__ spadjust; scalar_t__ traceno; } ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(ASMState *as)
{
  int32_t spadj;
  FUNC0(as);
  FUNC2(as, (int32_t)as->T->traceno);
  spadj = FUNC1(as);
  as->T->spadjust = (uint16_t)spadj;
  FUNC3(as, spadj);
  /* Root traces assume a checked stack for the starting proto. */
  as->T->topslot = FUNC4(as->T->startpt)->pt.framesize;
}
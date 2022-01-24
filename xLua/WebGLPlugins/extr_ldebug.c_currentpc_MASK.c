#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  p; } ;
struct TYPE_8__ {int /*<<< orphan*/  savedpc; } ;
struct TYPE_9__ {TYPE_1__ l; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
typedef  TYPE_3__ CallInfo ;

/* Variables and functions */
 TYPE_6__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (CallInfo *ci) {
  FUNC2(FUNC1(ci));
  return FUNC3(ci->u.l.savedpc, FUNC0(ci)->p);
}
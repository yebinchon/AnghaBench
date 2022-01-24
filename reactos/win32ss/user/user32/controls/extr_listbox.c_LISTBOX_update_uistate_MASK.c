#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ UIState; int /*<<< orphan*/  self; } ;
typedef  scalar_t__ LONG ;
typedef  TYPE_1__ LB_DESCR ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_QUERYUISTATE ; 

__attribute__((used)) static BOOL FUNC1(LB_DESCR *descr)
{
    LONG prev_flags;

    prev_flags = descr->UIState;
    descr->UIState = FUNC0(descr->self, WM_QUERYUISTATE, 0, 0);
    return prev_flags != descr->UIState;
}
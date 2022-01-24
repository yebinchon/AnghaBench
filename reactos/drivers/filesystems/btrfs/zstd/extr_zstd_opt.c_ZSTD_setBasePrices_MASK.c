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
struct TYPE_3__ {int /*<<< orphan*/  offCodeSum; void* offCodeSumBasePrice; int /*<<< orphan*/  matchLengthSum; void* matchLengthSumBasePrice; int /*<<< orphan*/  litLengthSum; void* litLengthSumBasePrice; int /*<<< orphan*/  litSum; void* litSumBasePrice; } ;
typedef  TYPE_1__ optState_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(optState_t* optPtr, int optLevel)
{
    optPtr->litSumBasePrice = FUNC0(optPtr->litSum, optLevel);
    optPtr->litLengthSumBasePrice = FUNC0(optPtr->litLengthSum, optLevel);
    optPtr->matchLengthSumBasePrice = FUNC0(optPtr->matchLengthSum, optLevel);
    optPtr->offCodeSumBasePrice = FUNC0(optPtr->offCodeSum, optLevel);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ result; } ;
typedef  scalar_t__ SwapResult ;
typedef  TYPE_1__ Swap ;

/* Variables and functions */
 int /*<<< orphan*/  SWAP_ACTIVE ; 
 scalar_t__ SWAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(Swap *s, SwapResult f) {
        FUNC0(s);

        if (s->result == SWAP_SUCCESS)
                s->result = f;

        FUNC1(s, SWAP_ACTIVE);
}
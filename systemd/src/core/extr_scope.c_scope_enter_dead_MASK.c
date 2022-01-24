#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ result; } ;
typedef  scalar_t__ ScopeResult ;
typedef  TYPE_1__ Scope ;

/* Variables and functions */
 int /*<<< orphan*/  SCOPE_DEAD ; 
 int /*<<< orphan*/  SCOPE_FAILED ; 
 scalar_t__ SCOPE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(Scope *s, ScopeResult f) {
        FUNC1(s);

        if (s->result == SCOPE_SUCCESS)
                s->result = f;

        FUNC4(FUNC0(s), s->result == SCOPE_SUCCESS, FUNC2(s->result));
        FUNC3(s, s->result != SCOPE_SUCCESS ? SCOPE_FAILED : SCOPE_DEAD);
}
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
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_5__ {scalar_t__ state; void* clean_result; void* result; } ;
typedef  TYPE_1__ Socket ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCKET_DEAD ; 
 scalar_t__ SOCKET_FAILED ; 
 void* SOCKET_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(Unit *u) {
        Socket *s = FUNC0(u);

        FUNC1(s);

        if (s->state == SOCKET_FAILED)
                FUNC2(s, SOCKET_DEAD);

        s->result = SOCKET_SUCCESS;
        s->clean_result = SOCKET_SUCCESS;
}
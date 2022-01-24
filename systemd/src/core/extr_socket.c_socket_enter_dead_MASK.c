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
struct TYPE_6__ {scalar_t__ result; int /*<<< orphan*/  dynamic_creds; int /*<<< orphan*/  exec_context; int /*<<< orphan*/  exec_runtime; } ;
typedef  scalar_t__ SocketResult ;
typedef  TYPE_1__ Socket ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET_DEAD ; 
 int /*<<< orphan*/  SOCKET_FAILED ; 
 scalar_t__ SOCKET_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(Socket *s, SocketResult f) {
        FUNC1(s);

        if (s->result == SOCKET_SUCCESS)
                s->result = f;

        if (s->result == SOCKET_SUCCESS)
                FUNC8(FUNC0(s));
        else
                FUNC7(FUNC0(s), FUNC4(s->result));

        FUNC5(s, s->result != SOCKET_SUCCESS ? SOCKET_FAILED : SOCKET_DEAD);

        s->exec_runtime = FUNC3(s->exec_runtime, true);

        FUNC6(FUNC0(s), &s->exec_context);

        FUNC9(FUNC0(s), true);

        FUNC2(&s->dynamic_creds);
}
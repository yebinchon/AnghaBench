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
struct TYPE_3__ {int /*<<< orphan*/  pPortName; } ;
typedef  TYPE_1__ PORT_INFO_2W ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RPC_S_SERVER_UNAVAILABLE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/ * pi_buffer ; 
 int /*<<< orphan*/  pi_needed ; 
 int pi_numports ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static PORT_INFO_2W * FUNC7(LPCWSTR pPort)
{
    PORT_INFO_2W * pi;
    DWORD   res;

    if (!pi_buffer) {
        res = FUNC0(NULL, 2, NULL, 0, &pi_needed, &pi_numports);
        if (!res && (FUNC1() == RPC_S_SERVER_UNAVAILABLE)) {
            FUNC6("The service 'Spooler' is required for many tests\n");
            return NULL;
        }
        FUNC5(!res, "EnumPorts succeeded: got %d\n", res);
        pi_buffer = FUNC3(FUNC2(), 0, pi_needed);
        res = FUNC0(NULL, 2, pi_buffer, pi_needed, &pi_needed, &pi_numports);
        FUNC5(res == 1, "EnumPorts failed: got %d\n", res);
    }
    if (pi_buffer) {
        pi = (PORT_INFO_2W *) pi_buffer;
        res = 0;
        while (pi_numports > res) {
            if (FUNC4(pi->pPortName, pPort) == 0) {
                return pi;
            }
            pi++;
            res++;
        }
    }
    return NULL;
}
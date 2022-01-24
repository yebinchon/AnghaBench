#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus ;
typedef  int BusTransport ;

/* Variables and functions */
#define  BUS_TRANSPORT_LOCAL 130 
#define  BUS_TRANSPORT_MACHINE 129 
#define  BUS_TRANSPORT_REMOTE 128 
 int /*<<< orphan*/  EHOSTDOWN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int _BUS_TRANSPORT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ **,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ **,char const*) ; 

int FUNC10(BusTransport transport, const char *host, bool user, sd_bus **bus) {
        int r;

        FUNC1(transport >= 0);
        FUNC1(transport < _BUS_TRANSPORT_MAX);
        FUNC1(bus);

        FUNC3((transport == BUS_TRANSPORT_LOCAL) == !host, -EINVAL);
        FUNC3(transport == BUS_TRANSPORT_LOCAL || !user, -EOPNOTSUPP);

        switch (transport) {

        case BUS_TRANSPORT_LOCAL:
                if (user)
                        r = FUNC5(bus);
                else {
                        if (FUNC7() <= 0)
                                /* Print a friendly message when the local system is actually not running systemd as PID 1. */
                                return FUNC6(FUNC0(EHOSTDOWN),
                                                       "System has not been booted with systemd as init system (PID 1). Can't operate.");
                        r = FUNC4(bus);
                }
                break;

        case BUS_TRANSPORT_REMOTE:
                r = FUNC9(bus, host);
                break;

        case BUS_TRANSPORT_MACHINE:
                r = FUNC8(bus, host);
                break;

        default:
                FUNC2("Hmm, unknown transport type.");
        }

        return r;
}
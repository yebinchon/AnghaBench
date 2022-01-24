#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rewriteConfigState {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_2__ {scalar_t__ bindaddr_count; int /*<<< orphan*/  bindaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rewriteConfigState*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__ server ; 

void FUNC7(struct rewriteConfigState *state) {
    int force = 1;
    sds line, addresses;
    char *option = "bind";

    /* Nothing to rewrite if we don't have bind addresses. */
    if (server.bindaddr_count == 0) {
        FUNC0(state,option);
        return;
    }

    /* Rewrite as bind <addr1> <addr2> ... <addrN> */
    addresses = FUNC5(server.bindaddr,server.bindaddr_count," ");
    line = FUNC6(option);
    line = FUNC2(line, " ", 1);
    line = FUNC3(line, addresses);
    FUNC4(addresses);

    FUNC1(state,option,line,force);
}
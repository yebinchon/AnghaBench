#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* ifname; int /*<<< orphan*/  mac; } ;
typedef  TYPE_1__ Link ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int ETHER_ADDR_TO_STRING_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 

void FUNC5(Link *link, FILE *f) {
        char mac[ETHER_ADDR_TO_STRING_MAX];

        FUNC0(link);
        FUNC0(f);

        FUNC4("[Match]\n", f);

        if (!FUNC1(&link->mac))
                FUNC3(f, "MACAddress=%s\n", FUNC2(&link->mac, mac));

        FUNC3(f,
                "\n[Link]\n"
                "Name=%s\n",
                link->ifname);
}
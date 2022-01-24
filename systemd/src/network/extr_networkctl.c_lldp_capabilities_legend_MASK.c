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
typedef  unsigned int uint16_t ;

/* Variables and functions */
 unsigned int FUNC0 (char const* const*) ; 
 scalar_t__ arg_all ; 
 unsigned int FUNC1 () ; 
 scalar_t__ FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned int FUNC4 (char const* const) ; 

__attribute__((used)) static void FUNC5(uint16_t x) {
        unsigned w, i, cols = FUNC1();
        static const char* const table[] = {
                "o - Other",
                "p - Repeater",
                "b - Bridge",
                "w - WLAN Access Point",
                "r - Router",
                "t - Telephone",
                "d - DOCSIS cable device",
                "a - Station",
                "c - Customer VLAN",
                "s - Service VLAN",
                "m - Two-port MAC Relay (TPMR)",
        };

        if (x == 0)
                return;

        FUNC2("\nCapability Flags:\n");
        for (w = 0, i = 0; i < FUNC0(table); i++)
                if (x & (1U << i) || arg_all) {
                        bool newline;

                        newline = w + FUNC4(table[i]) + (w == 0 ? 0 : 2) > cols;
                        if (newline)
                                w = 0;
                        w += FUNC2("%s%s%s", newline ? "\n" : "", w == 0 ? "" : "; ", table[i]);
                }
        FUNC3("");
}
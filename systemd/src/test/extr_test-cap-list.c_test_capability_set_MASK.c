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
typedef  int uint64_t ;

/* Variables and functions */
 int CAP_AUDIT_CONTROL ; 
 int CAP_CHOWN ; 
 int CAP_DAC_OVERRIDE ; 
 int CAP_DAC_READ_SEARCH ; 
 int CAP_FOWNER ; 
 int CAP_MAC_OVERRIDE ; 
 int CAP_SETGID ; 
 int CAP_SETUID ; 
 int CAP_SYSLOG ; 
 int CAP_SYS_ADMIN ; 
 int CAP_SYS_PTRACE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static void FUNC5(void) {
        uint64_t c;

        FUNC1(FUNC3(NULL, &c) == 0);
        FUNC1(c == 0);

        FUNC1(FUNC3("", &c) == 0);
        FUNC1(c == 0);

        FUNC1(FUNC3("0", &c) == 0);
        FUNC1(c == FUNC0(1));

        FUNC1(FUNC3("1", &c) == 0);
        FUNC1(c == FUNC0(1) << 1);

        FUNC1(FUNC3("0 1 2 3", &c) == 0);
        FUNC1(c == (FUNC0(1) << 4) - 1);

        FUNC4(0, "");
        FUNC4(
                FUNC0(1) << CAP_DAC_OVERRIDE,
                "cap_dac_override");
        FUNC4(
                FUNC0(1) << CAP_DAC_OVERRIDE |
                FUNC0(1) << FUNC2(),
                "cap_dac_override");
        FUNC4(
                FUNC0(1) << FUNC2(), "");
        FUNC4(
                FUNC0(1) << CAP_CHOWN |
                FUNC0(1) << CAP_DAC_OVERRIDE |
                FUNC0(1) << CAP_DAC_READ_SEARCH |
                FUNC0(1) << CAP_FOWNER |
                FUNC0(1) << CAP_SETGID |
                FUNC0(1) << CAP_SETUID |
                FUNC0(1) << CAP_SYS_PTRACE |
                FUNC0(1) << CAP_SYS_ADMIN |
                FUNC0(1) << CAP_AUDIT_CONTROL |
                FUNC0(1) << CAP_MAC_OVERRIDE |
                FUNC0(1) << CAP_SYSLOG |
                FUNC0(1) << (FUNC2() + 1),
                "cap_chown cap_dac_override cap_dac_read_search cap_fowner "
                "cap_setgid cap_setuid cap_sys_ptrace cap_sys_admin "
                "cap_audit_control cap_mac_override cap_syslog");
}
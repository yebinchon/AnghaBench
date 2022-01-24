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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPPROTO_DCCP ; 
 int IPPROTO_IP ; 
 int IPPROTO_SCTP ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(int argc, const char *argv[]) {
        FUNC0(IPPROTO_TCP);
        FUNC0(IPPROTO_DCCP);
        FUNC1(-1);
        FUNC1(1024 * 1024);

        FUNC3("sctp");
        FUNC3("udp");
        FUNC4("hoge");
        FUNC4("-1");
        FUNC4("1000000000");

        FUNC2("sctp", IPPROTO_SCTP);
        FUNC2("ScTp", IPPROTO_SCTP);
        FUNC2("ip", IPPROTO_IP);
        FUNC2("", IPPROTO_IP);
        FUNC2("1", 1);
        FUNC2("0", 0);
        FUNC2("-10", -EINVAL);
        FUNC2("100000000", -EINVAL);

        return 0;
}
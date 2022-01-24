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
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_flags ; 
 scalar_t__ test_gid ; 
 scalar_t__ test_uid ; 

__attribute__((used)) static void FUNC7(void) {
        int sock;

        sock = FUNC6(AF_INET, SOCK_RAW, IPPROTO_UDP);
        FUNC0(sock >= 0);
        FUNC4(sock);

        FUNC0(FUNC1(test_uid, test_gid, test_flags) >= 0);
        FUNC0(FUNC3() == test_uid);
        FUNC0(FUNC2() == test_gid);
        FUNC5();

        sock = FUNC6(AF_INET, SOCK_RAW, IPPROTO_UDP);
        FUNC0(sock < 0);
}
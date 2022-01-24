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
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg_snaplen ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*) ; 
 int /*<<< orphan*/  message_pcap ; 
 int FUNC6 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC7(int argc, char **argv, void *userdata) {
        int r;

        if (FUNC4(FUNC3(stdout)) > 0)
                return FUNC5(FUNC0(EINVAL),
                                       "Refusing to write message data to console, please redirect output to a file.");

        FUNC1(arg_snaplen, stdout);

        r = FUNC6(argc, argv, message_pcap);
        if (r < 0)
                return r;

        r = FUNC2(stdout);
        if (r < 0)
                return FUNC5(r, "Couldn't write capture file: %m");

        return r;
}
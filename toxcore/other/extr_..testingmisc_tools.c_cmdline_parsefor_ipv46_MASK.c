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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

int FUNC2(int argc, char **argv, uint8_t *ipv6enabled)
{
    int argvoffset = 0, argi;

    for (argi = 1; argi < argc; argi++)
        if (!FUNC1(argv[argi], "--ipv", 5)) {
            if (argv[argi][5] && !argv[argi][6]) {
                char c = argv[argi][5];

                if (c == '4')
                    *ipv6enabled = 0;
                else if (c == '6')
                    *ipv6enabled = 1;
                else {
                    FUNC0("Invalid argument: %s. Try --ipv4 or --ipv6!\n", argv[argi]);
                    return -1;
                }
            } else {
                FUNC0("Invalid argument: %s. Try --ipv4 or --ipv6!\n", argv[argi]);
                return -1;
            }

            if (argvoffset != argi - 1) {
                FUNC0("Argument must come first: %s.\n", argv[argi]);
                return -1;
            }

            argvoffset++;
        }

    return argvoffset;
}
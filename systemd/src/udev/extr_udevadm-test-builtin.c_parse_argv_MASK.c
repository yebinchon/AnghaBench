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
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* arg_command ; 
 char* arg_syspath ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*,struct option const*,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
#define  no_argument 128 
 int /*<<< orphan*/  optind ; 
 int FUNC5 () ; 

__attribute__((used)) static int FUNC6(int argc, char *argv[]) {
        static const struct option options[] = {
                { "version", no_argument, NULL, 'V' },
                { "help",    no_argument, NULL, 'h' },
                {}
        };

        int c;

        while ((c = FUNC2(argc, argv, "Vh", options, NULL)) >= 0)
                switch (c) {
                case 'V':
                        return FUNC5();
                case 'h':
                        return FUNC3();
                case '?':
                        return -EINVAL;
                default:
                        FUNC1("Unknown option");
                }

        arg_command = argv[optind++];
        if (!arg_command)
                return FUNC4(FUNC0(EINVAL),
                                       "Command missing.");

        arg_syspath = argv[optind++];
        if (!arg_syspath)
                return FUNC4(FUNC0(EINVAL),
                                       "syspath missing.");

        return 1;
}
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
 int /*<<< orphan*/  arg_exists ; 
 int /*<<< orphan*/  arg_timeout ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*,struct option const*,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
#define  no_argument 129 
 int /*<<< orphan*/  optarg ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
#define  required_argument 128 

__attribute__((used)) static int FUNC8(int argc, char *argv[]) {
        static const struct option options[] = {
                { "timeout",        required_argument, NULL, 't' },
                { "exit-if-exists", required_argument, NULL, 'E' },
                { "version",        no_argument,       NULL, 'V' },
                { "help",           no_argument,       NULL, 'h' },
                { "seq-start",      required_argument, NULL, 's' }, /* removed */
                { "seq-end",        required_argument, NULL, 'e' }, /* removed */
                { "quiet",          no_argument,       NULL, 'q' }, /* removed */
                {}
        };

        int c, r;

        while ((c = FUNC2(argc, argv, "t:E:Vhs:e:q", options, NULL)) >= 0) {
                switch (c) {
                case 't':
                        r = FUNC6(optarg, &arg_timeout);
                        if (r < 0)
                                return FUNC4(r, "Failed to parse timeout value '%s': %m", optarg);
                        break;
                case 'E':
                        arg_exists = optarg;
                        break;
                case 'V':
                        return FUNC7();
                case 'h':
                        return FUNC3();
                case 's':
                case 'e':
                case 'q':
                        return FUNC5(FUNC0(EINVAL),
                                              "Option -%c no longer supported.",
                                              c);
                case '?':
                        return -EINVAL;
                default:
                        FUNC1("Unknown option.");
                }
        }

        return 1;
}
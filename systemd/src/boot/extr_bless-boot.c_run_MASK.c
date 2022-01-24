#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* member_0; int const member_1; int const member_2; int /*<<< orphan*/  const member_4; int /*<<< orphan*/  member_3; } ;
typedef  TYPE_1__ Verb ;

/* Variables and functions */
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  VERB_ANY 132 
#define  VERB_DEFAULT 131 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int,char**,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
#define  help 130 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int,char**) ; 
#define  verb_set 129 
#define  verb_status 128 

__attribute__((used)) static int FUNC8(int argc, char *argv[]) {
        static const Verb verbs[] = {
                { "help",          VERB_ANY, VERB_ANY, 0,            help        },
                { "status",        VERB_ANY, 1,        VERB_DEFAULT, verb_status },
                { "good",          VERB_ANY, 1,        0,            verb_set    },
                { "bad",           VERB_ANY, 1,        0,            verb_set    },
                { "indeterminate", VERB_ANY, 1,        0,            verb_set    },
                {}
        };

        int r;

        FUNC6();
        FUNC5();

        r = FUNC7(argc, argv);
        if (r <= 0)
                return r;

        if (FUNC1() > 0)
                return FUNC4(FUNC0(EOPNOTSUPP),
                                       "Marking a boot is not supported in containers.");

        if (!FUNC3())
                return FUNC4(FUNC0(EOPNOTSUPP),
                                       "Marking a boot is only supported on EFI systems.");

        return FUNC2(argc, argv, verbs, NULL);
}
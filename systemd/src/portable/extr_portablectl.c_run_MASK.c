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
struct TYPE_3__ {char* member_0; int const member_1; int const member_2; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; } ;
typedef  TYPE_1__ Verb ;

/* Variables and functions */
#define  VERB_ANY 138 
#define  VERB_DEFAULT 137 
#define  attach_image 136 
#define  detach_image 135 
 int FUNC0 (int,char**,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
#define  help 134 
#define  inspect_image 133 
#define  is_image_attached 132 
#define  list_images 131 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char**) ; 
#define  read_only_image 130 
#define  remove_image 129 
#define  set_limit 128 

__attribute__((used)) static int FUNC5(int argc, char *argv[]) {
        static const Verb verbs[] = {
                { "help",        VERB_ANY, VERB_ANY, 0,            help              },
                { "list",        VERB_ANY, 1,        VERB_DEFAULT, list_images       },
                { "attach",      2,        VERB_ANY, 0,            attach_image      },
                { "detach",      2,        2,        0,            detach_image      },
                { "inspect",     2,        VERB_ANY, 0,            inspect_image     },
                { "is-attached", 2,        2,        0,            is_image_attached },
                { "read-only",   2,        3,        0,            read_only_image   },
                { "remove",      2,        VERB_ANY, 0,            remove_image      },
                { "set-limit",   3,        3,        0,            set_limit         },
                {}
        };

        int r;

        FUNC3(true);
        FUNC2();
        FUNC1();

        r = FUNC4(argc, argv);
        if (r <= 0)
                return r;

        return FUNC0(argc, argv, verbs, NULL);
}
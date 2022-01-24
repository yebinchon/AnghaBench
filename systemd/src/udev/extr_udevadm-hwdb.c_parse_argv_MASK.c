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
struct option {char* member_0; unsigned char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UDEVLIBEXECDIR ; 
 int /*<<< orphan*/  arg_hwdb_bin_dir ; 
 void* arg_root ; 
 int arg_strict ; 
 void* arg_test ; 
 int arg_update ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,char**,char*,struct option const*,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
#define  no_argument 129 
 void* optarg ; 
 int FUNC3 () ; 
#define  required_argument 128 

__attribute__((used)) static int FUNC4(int argc, char *argv[]) {
        enum {
                ARG_USR = 0x100,
        };

        static const struct option options[] = {
                { "update",  no_argument,       NULL, 'u'     },
                { "usr",     no_argument,       NULL, ARG_USR },
                { "strict",  no_argument,       NULL, 's'     },
                { "test",    required_argument, NULL, 't'     },
                { "root",    required_argument, NULL, 'r'     },
                { "version", no_argument,       NULL, 'V'     },
                { "help",    no_argument,       NULL, 'h'     },
                {}
        };

        int c;

        while ((c = FUNC1(argc, argv, "ust:r:Vh", options, NULL)) >= 0)
                switch(c) {
                case 'u':
                        arg_update = true;
                        break;
                case ARG_USR:
                        arg_hwdb_bin_dir = UDEVLIBEXECDIR;
                        break;
                case 's':
                        arg_strict = true;
                        break;
                case 't':
                        arg_test = optarg;
                        break;
                case 'r':
                        arg_root = optarg;
                        break;
                case 'V':
                        return FUNC3();
                case 'h':
                        return FUNC2();
                case '?':
                        return -EINVAL;
                default:
                        FUNC0("Unknown option");
                }

        return 1;
}
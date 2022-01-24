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
 int /*<<< orphan*/  PATH_MAX ; 
 int PHASE_ALL ; 
 int PHASE_INVAL ; 
 int XATTR_SIZE_MAX ; 
 int dropcaches ; 
 int files ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int keep_files ; 
 int /*<<< orphan*/  longopts ; 
 int nth ; 
 int /*<<< orphan*/  optarg ; 
 char* path ; 
 int phase ; 
 char* script ; 
 int /*<<< orphan*/  shortopts ; 
 int size ; 
 int size_is_random ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int synccaches ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,char**) ; 
 int value_is_random ; 
 int verbose ; 
 int verify ; 
 int xattrs ; 

__attribute__((used)) static int
FUNC7(int argc, char **argv)
{
	long seed = FUNC5(NULL);
	int c;
	int rc = 0;

	while ((c = FUNC1(argc, argv, shortopts, longopts, NULL)) != -1) {
		switch (c) {
		case 'h':
			return (FUNC6(argc, argv));
		case 'v':
			verbose++;
			break;
		case 'y':
			verify = 1;
			break;
		case 'n':
			nth = FUNC4(optarg, NULL, 0);
			break;
		case 'f':
			files = FUNC4(optarg, NULL, 0);
			break;
		case 'x':
			xattrs = FUNC4(optarg, NULL, 0);
			break;
		case 's':
			size = FUNC4(optarg, NULL, 0);
			if (size > XATTR_SIZE_MAX) {
				FUNC0(stderr, "Error: the -s value may not "
				    "be greater than %d\n", XATTR_SIZE_MAX);
				rc = 1;
			}
			break;
		case 'p':
			FUNC3(path, optarg, PATH_MAX);
			path[PATH_MAX - 1] = '\0';
			break;
		case 'c':
			synccaches = 1;
			break;
		case 'd':
			dropcaches = 1;
			break;
		case 't':
			FUNC3(script, optarg, PATH_MAX);
			script[PATH_MAX - 1] = '\0';
			break;
		case 'e':
			seed = FUNC4(optarg, NULL, 0);
			break;
		case 'r':
			size_is_random = 1;
			break;
		case 'R':
			value_is_random = 1;
			break;
		case 'k':
			keep_files = 1;
			break;
		case 'o':
			phase = FUNC4(optarg, NULL, 0);
			if (phase <= PHASE_ALL || phase >= PHASE_INVAL) {
				FUNC0(stderr, "Error: the -o value must be "
				    "greater than %d and less than %d\n",
				    PHASE_ALL, PHASE_INVAL);
				rc = 1;
			}
			break;
		default:
			rc = 1;
			break;
		}
	}

	if (rc != 0)
		return (rc);

	FUNC2(seed);

	if (verbose) {
		FUNC0(stdout, "verbose:          %d\n", verbose);
		FUNC0(stdout, "verify:           %d\n", verify);
		FUNC0(stdout, "nth:              %d\n", nth);
		FUNC0(stdout, "files:            %d\n", files);
		FUNC0(stdout, "xattrs:           %d\n", xattrs);
		FUNC0(stdout, "size:             %d\n", size);
		FUNC0(stdout, "path:             %s\n", path);
		FUNC0(stdout, "synccaches:       %d\n", synccaches);
		FUNC0(stdout, "dropcaches:       %d\n", dropcaches);
		FUNC0(stdout, "script:           %s\n", script);
		FUNC0(stdout, "seed:             %ld\n", seed);
		FUNC0(stdout, "random size:      %d\n", size_is_random);
		FUNC0(stdout, "random value:     %d\n", value_is_random);
		FUNC0(stdout, "keep:             %d\n", keep_files);
		FUNC0(stdout, "only:             %d\n", phase);
		FUNC0(stdout, "%s", "\n");
	}

	return (rc);
}
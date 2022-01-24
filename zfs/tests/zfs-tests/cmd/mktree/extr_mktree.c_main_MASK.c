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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,char**,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ ndir ; 
 scalar_t__ nfile ; 
 scalar_t__ nlevel ; 
 int /*<<< orphan*/ * optarg ; 
 int /*<<< orphan*/ * pbasedir ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(int argc, char *argv[])
{
	int c, ret;

	while ((c = FUNC1(argc, argv, "b:l:d:f:")) != -1) {
		switch (c) {
		case 'b':
			pbasedir = optarg;
			break;
		case 'l':
			nlevel = FUNC0(optarg);
			break;
		case 'd':
			ndir = FUNC0(optarg);
			break;
		case 'f':
			nfile = FUNC0(optarg);
			break;
		case '?':
			FUNC3(argv[0]);
		}
	}
	if (nlevel < 0 || ndir < 0 || nfile < 0 || pbasedir == NULL) {
		FUNC3(argv[0]);
	}

	ret = FUNC2(pbasedir, 1);

	return (ret);
}
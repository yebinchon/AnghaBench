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
typedef  int /*<<< orphan*/  MuOfficeLib ;
typedef  int MuError ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(int argc, char **argv)
{
	MuOfficeLib *mu;
	MuError err;
	int ret;

	err = FUNC0(&mu);
	if (err)
	{
		FUNC2(stderr, "Failed to create lib instance: error=%d\n", err);
		return EXIT_FAILURE;
	}

	ret = FUNC3(mu);
	if (ret)
		return ret;

	ret = FUNC4(mu);
	if (ret)
		return ret;

	FUNC1(mu);

	return EXIT_SUCCESS;
}
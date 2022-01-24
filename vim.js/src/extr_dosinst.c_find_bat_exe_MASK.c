#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * oldbat; int /*<<< orphan*/  exename; void* oldexe; int /*<<< orphan*/  batname; } ;

/* Variables and functions */
 int TARGET_COUNT ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * default_bat_dir ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* installdir ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 char* sysdrive ; 
 TYPE_1__* targets ; 

__attribute__((used)) static void
FUNC7(int check_bat_only)
{
    int		i;

    /* avoid looking in the "installdir" by chdir to system root */
    FUNC2(sysdrive);
    FUNC2("\\");

    for (i = 1; i < TARGET_COUNT; ++i)
    {
	targets[i].oldbat = FUNC4(targets[i].batname);
	if (!check_bat_only)
	    targets[i].oldexe = FUNC4(targets[i].exename);

	if (default_bat_dir == NULL && targets[i].oldbat != NULL)
	{
	    default_bat_dir = FUNC0(FUNC6(targets[i].oldbat) + 1);
	    FUNC5(default_bat_dir, targets[i].oldbat);
	    FUNC3(default_bat_dir);
	}
	if (check_bat_only && targets[i].oldbat != NULL)
	{
	    FUNC1(targets[i].oldbat);
	    targets[i].oldbat = NULL;
	}
    }

    FUNC2(installdir);
}
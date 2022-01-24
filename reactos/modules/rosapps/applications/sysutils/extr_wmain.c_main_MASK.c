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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ **) ; 

int FUNC5(int argc, char *argv[])
{
	wchar_t	** wargv;
	int	i;
	int	ec;

	wargv = (wchar_t **) FUNC0(
				sizeof(void*) * argc,
				0
				);
	for(i=0;i<argc;++i)
	{
		wargv[i] = (wchar_t*) FUNC0(
				sizeof(wchar_t) * (1+FUNC3(argv[i])),
				0
				);
		FUNC2(argv[i],wargv[i]);
	}
	wargv[i] = NULL;
	ec = FUNC4(argc,wargv);
	for (i=0;wargv[i];++i) FUNC1(wargv[i]);
	return ec;
}
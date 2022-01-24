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
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int FUNC0 (int /*<<< orphan*/  (*) ()) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * pidfile ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9()
{
	int f, error, pid;
	char pid_str[21];

	if (pidfile == NULL)
		return 0;

	pid = FUNC3();

	error = FUNC6(pid_str, "%d", pid);
	if (error < 0)
		goto fail;

	f = FUNC4(pidfile, O_CREAT|O_EXCL|O_WRONLY, 0644);
	if (f < 0)
		goto fail;

	error = FUNC0(remove_pidfile);
	if (error < 0) {
		FUNC1(f);
		FUNC5();
		goto fail;
	}

	if (0 > (FUNC8(f, (void*)pid_str, FUNC7(pid_str)))) {
		FUNC1(f);
		goto fail;
	}

	error = FUNC1(f);
	if (error < 0)
		goto fail;

	return 0;

fail:
	FUNC2(stderr, "Failed to set up pidfile\n");
	return -1;
}
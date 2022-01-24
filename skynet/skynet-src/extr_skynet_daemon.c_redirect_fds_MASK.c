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
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4() {
	int nfd = FUNC2("/dev/null", O_RDWR);
	if (nfd == -1) {
		FUNC3("Unable to open /dev/null: ");
		return -1;
	}
	if (FUNC1(nfd, 0) < 0) {
		FUNC3("Unable to dup2 stdin(0): ");
		return -1;
	}
	if (FUNC1(nfd, 1) < 0) {
		FUNC3("Unable to dup2 stdout(1): ");
		return -1;
	}
	if (FUNC1(nfd, 2) < 0) {
		FUNC3("Unable to dup2 stderr(2): ");
		return -1;
	}

	FUNC0(nfd);

	return 0;
}
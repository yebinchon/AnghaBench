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
struct timeval {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  O_CREAT ; 
 int PATH_MAX ; 
 int FUNC1 (int) ; 
 int errno ; 
 int files ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (size_t) ; 
 int nth ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 char* path ; 
 int FUNC7 (char*) ; 
 size_t FUNC8 (char*,size_t,char*,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 double FUNC9 (struct timeval*,struct timeval*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static int
FUNC11(void)
{
	int i, rc;
	char *file = NULL;
	struct timeval start, stop;
	double seconds;
	size_t fsize;

	fsize = PATH_MAX;
	file = FUNC5(fsize);
	if (file == NULL) {
		rc = ENOMEM;
		FUNC0("Error %d: malloc(%d) bytes for file name\n", rc,
		    PATH_MAX);
		goto out;
	}

	(void) FUNC4(&start, NULL);

	for (i = 1; i <= files; i++) {
		if (FUNC8(file, fsize, "%s/file-%d", path, i) >= fsize) {
			rc = EINVAL;
			FUNC0("Error %d: path too long\n", rc);
			goto out;
		}

		if (nth && ((i % nth) == 0))
			FUNC2(stdout, "create: %s\n", file);

		rc = FUNC10(file);
		if ((rc == -1) && (errno != ENOENT)) {
			FUNC0("Error %d: unlink(%s)\n", errno, file);
			rc = errno;
			goto out;
		}

		rc = FUNC6(file, O_CREAT, 0644);
		if (rc == -1) {
			FUNC0("Error %d: open(%s, O_CREATE, 0644)\n",
			    errno, file);
			rc = errno;
			goto out;
		}

		rc = FUNC1(rc);
		if (rc == -1) {
			FUNC0("Error %d: close(%d)\n", errno, rc);
			rc = errno;
			goto out;
		}
	}

	(void) FUNC4(&stop, NULL);
	seconds = FUNC9(&stop, &start);
	FUNC2(stdout, "create:   %f seconds %f creates/second\n",
	    seconds, files / seconds);

	rc = FUNC7("post");
out:
	if (file)
		FUNC3(file);

	return (rc);
}
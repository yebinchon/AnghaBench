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
typedef  size_t u_int ;
struct stat {scalar_t__ st_rdev; } ;
struct kinfo_proc {scalar_t__ kp_tdev; int /*<<< orphan*/  kp_comm; } ;

/* Variables and functions */
 int CTL_KERN ; 
 scalar_t__ ENOMEM ; 
 int KERN_PROC ; 
 int KERN_PROC_PGRP ; 
 struct kinfo_proc* FUNC0 (struct kinfo_proc*,struct kinfo_proc*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct kinfo_proc*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 struct kinfo_proc* FUNC3 (struct kinfo_proc*,size_t) ; 
 int FUNC4 (char*,struct stat*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int*,int /*<<< orphan*/ ,struct kinfo_proc*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 

char *
FUNC8(int fd, char *tty)
{
	int		 mib[4] = { CTL_KERN, KERN_PROC, KERN_PROC_PGRP, 0 };
	struct stat	 sb;
	size_t		 len;
	struct kinfo_proc *buf, *newbuf, *bestp;
	u_int		 i;
	char		*name;

	buf = NULL;

	if (FUNC4(tty, &sb) == -1)
		return (NULL);
	if ((mib[3] = FUNC7(fd)) == -1)
		return (NULL);

retry:
	if (FUNC6(mib, FUNC2(mib), NULL, &len, NULL, 0) == -1)
		return (NULL);
	len = (len * 5) / 4;

	if ((newbuf = FUNC3(buf, len)) == NULL)
		goto error;
	buf = newbuf;

	if (FUNC6(mib, FUNC2(mib), buf, &len, NULL, 0) == -1) {
		if (errno == ENOMEM)
			goto retry;
		goto error;
	}

	bestp = NULL;
	for (i = 0; i < len / sizeof (struct kinfo_proc); i++) {
		if (buf[i].kp_tdev != sb.st_rdev)
			continue;
		if (bestp == NULL)
			bestp = &buf[i];
		else
			bestp = FUNC0(&buf[i], bestp);
	}

	name = NULL;
	if (bestp != NULL)
		name = FUNC5(bestp->kp_comm);

	FUNC1(buf);
	return (name);

error:
	FUNC1(buf);
	return (NULL);
}
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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 scalar_t__ ECONNREFUSED ; 
 scalar_t__ ENAMETOOLONG ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  client_proc ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct event_base*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 size_t FUNC10 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char**,char*,char const*) ; 

__attribute__((used)) static int
FUNC13(struct event_base *base, const char *path, int start_server)
{
	struct sockaddr_un	sa;
	size_t			size;
	int			fd, lockfd = -1, locked = 0;
	char		       *lockfile = NULL;

	FUNC5(&sa, 0, sizeof sa);
	sa.sun_family = AF_UNIX;
	size = FUNC10(sa.sun_path, path, sizeof sa.sun_path);
	if (size >= sizeof sa.sun_path) {
		errno = ENAMETOOLONG;
		return (-1);
	}
	FUNC4("socket is %s", path);

retry:
	if ((fd = FUNC8(AF_UNIX, SOCK_STREAM, 0)) == -1)
		return (-1);

	FUNC4("trying connect");
	if (FUNC2(fd, (struct sockaddr *)&sa, sizeof sa) == -1) {
		FUNC4("connect failed: %s", FUNC9(errno));
		if (errno != ECONNREFUSED && errno != ENOENT)
			goto failed;
		if (!start_server)
			goto failed;
		FUNC1(fd);

		if (!locked) {
			FUNC12(&lockfile, "%s.lock", path);
			if ((lockfd = FUNC0(lockfile)) < 0) {
				FUNC4("didn't get lock (%d)", lockfd);

				FUNC3(lockfile);
				lockfile = NULL;

				if (lockfd == -2)
					goto retry;
			}
			FUNC4("got lock (%d)", lockfd);

			/*
			 * Always retry at least once, even if we got the lock,
			 * because another client could have taken the lock,
			 * started the server and released the lock between our
			 * connect() and flock().
			 */
			locked = 1;
			goto retry;
		}

		if (lockfd >= 0 && FUNC11(path) != 0 && errno != ENOENT) {
			FUNC3(lockfile);
			FUNC1(lockfd);
			return (-1);
		}
		fd = FUNC6(client_proc, base, lockfd, lockfile);
	}

	if (locked && lockfd >= 0) {
		FUNC3(lockfile);
		FUNC1(lockfd);
	}
	FUNC7(fd, 0);
	return (fd);

failed:
	if (locked) {
		FUNC3(lockfile);
		FUNC1(lockfd);
	}
	FUNC1(fd);
	return (-1);
}
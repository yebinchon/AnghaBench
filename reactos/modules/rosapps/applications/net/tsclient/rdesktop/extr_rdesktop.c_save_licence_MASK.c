#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* hostname; } ;
typedef  TYPE_1__ RDPCLIENT ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int) ; 

void
FUNC14(RDPCLIENT * This, unsigned char *data, int length)
{
	char *home, *path, *tmppath;
	int fd;

	home = FUNC1("HOME");
	if (home == NULL)
		return;

	path = (char *) FUNC13(FUNC9(home) + FUNC9(This->hostname) + sizeof("/.rdesktop/licence."));

	FUNC6(path, "%s/.rdesktop", home);
	if ((FUNC2(path, 0700) == -1) && errno != EEXIST)
	{
		FUNC4(path);
		return;
	}

	/* write licence to licence.hostname.new, then atomically rename to licence.hostname */

	FUNC6(path, "%s/.rdesktop/licence.%s", home, This->hostname);
	tmppath = (char *) FUNC13(FUNC9(path) + sizeof(".new"));
	FUNC8(tmppath, path);
	FUNC7(tmppath, ".new");

	fd = FUNC3(tmppath, O_WRONLY | O_CREAT | O_TRUNC, 0600);
	if (fd == -1)
	{
		FUNC4(tmppath);
		return;
	}

	if (FUNC11(fd, data, length) != length)
	{
		FUNC4(tmppath);
		FUNC10(tmppath);
	}
	else if (FUNC5(tmppath, path) == -1)
	{
		FUNC4(path);
		FUNC10(tmppath);
	}

	FUNC0(fd);
	FUNC12(tmppath);
	FUNC12(path);
}
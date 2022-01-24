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
typedef  unsigned char uint8 ;
struct stat {int st_size; } ;
struct TYPE_3__ {char* hostname; } ;
typedef  TYPE_1__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int) ; 

int
FUNC9(RDPCLIENT * This, unsigned char **data)
{
	char *home, *path;
	struct stat st;
	int fd, length;

	home = FUNC2("HOME");
	if (home == NULL)
		return -1;

	path = (char *) FUNC8(FUNC6(home) + FUNC6(This->hostname) + sizeof("/.rdesktop/licence."));
	FUNC5(path, "%s/.rdesktop/licence.%s", home, This->hostname);

	fd = FUNC3(path, O_RDONLY);
	if (fd == -1)
		return -1;

	if (FUNC1(fd, &st))
	{
		FUNC0(fd);
		return -1;
	}

	*data = (uint8 *) FUNC8(st.st_size);
	length = FUNC4(fd, *data, st.st_size);
	FUNC0(fd);
	FUNC7(path);
	return length;
}
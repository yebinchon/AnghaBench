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
struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (int) ; 
 int S_IXUSR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 

__attribute__((used)) static void
FUNC7(char *dirpath)
{
	DIR *dir;
	struct dirent *ent;
	char fullpath[MAXPATHLEN];
	struct stat dir_stat;

	if ((dir = FUNC2(dirpath)) != NULL) {
		/* print all the files and directories within directory */
		while ((ent = FUNC4(dir)) != NULL) {
			FUNC5(fullpath, "%s/%s", dirpath, ent->d_name);

			/* Print the scripts */
			if (FUNC6(fullpath, &dir_stat) == 0)
				if (dir_stat.st_mode & S_IXUSR &&
				    FUNC0(dir_stat.st_mode))
					FUNC3(ent->d_name,
					    fullpath);
		}
		FUNC1(dir);
	}
}
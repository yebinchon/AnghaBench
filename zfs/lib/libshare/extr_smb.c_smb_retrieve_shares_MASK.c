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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
struct TYPE_3__ {struct TYPE_3__* next; int /*<<< orphan*/  guest_ok; int /*<<< orphan*/  comment; int /*<<< orphan*/  path; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ smb_share_t ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  file_path ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int PATH_MAX ; 
 int SA_NO_MEMORY ; 
 int SA_OK ; 
 int SA_SYSTEM_ERR ; 
 char* SHARE_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 struct dirent* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* smb_shares ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*,char*) ; 
 int FUNC11 (char*,struct stat*) ; 
 char* FUNC12 (char*,char) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 char* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC16 (char*) ; 

__attribute__((used)) static int
FUNC17(void)
{
	int rc = SA_OK;
	char file_path[PATH_MAX], line[512], *token, *key, *value;
	char *dup_value = NULL, *path = NULL, *comment = NULL, *name = NULL;
	char *guest_ok = NULL;
	DIR *shares_dir;
	FILE *share_file_fp = NULL;
	struct dirent *directory;
	struct stat eStat;
	smb_share_t *shares, *new_shares = NULL;

	/* opendir(), stat() */
	shares_dir = FUNC8(SHARE_DIR);
	if (shares_dir == NULL)
		return (SA_SYSTEM_ERR);

	/* Go through the directory, looking for shares */
	while ((directory = FUNC9(shares_dir))) {
		if (directory->d_name[0] == '.')
			continue;

		FUNC10(file_path, sizeof (file_path),
		    "%s/%s", SHARE_DIR, directory->d_name);

		if (FUNC11(file_path, &eStat) == -1) {
			rc = SA_SYSTEM_ERR;
			goto out;
		}

		if (!FUNC0(eStat.st_mode))
			continue;

		if ((share_file_fp = FUNC5(file_path, "r")) == NULL) {
			rc = SA_SYSTEM_ERR;
			goto out;
		}

		name = FUNC14(directory->d_name);
		if (name == NULL) {
			rc = SA_NO_MEMORY;
			goto out;
		}

		while (FUNC4(line, sizeof (line), share_file_fp)) {
			if (line[0] == '#')
				continue;

			/* Trim trailing new-line character(s). */
			while (line[FUNC16(line) - 1] == '\r' ||
			    line[FUNC16(line) - 1] == '\n')
				line[FUNC16(line) - 1] = '\0';

			/* Split the line in two, separated by '=' */
			token = FUNC12(line, '=');
			if (token == NULL)
				continue;

			key = line;
			value = token + 1;
			*token = '\0';

			dup_value = FUNC14(value);
			if (dup_value == NULL) {
				rc = SA_NO_MEMORY;
				goto out;
			}

			if (FUNC13(key, "path") == 0) {
				FUNC6(path);
				path = dup_value;
			} else if (FUNC13(key, "comment") == 0) {
				FUNC6(comment);
				comment = dup_value;
			} else if (FUNC13(key, "guest_ok") == 0) {
				FUNC6(guest_ok);
				guest_ok = dup_value;
			} else
				FUNC6(dup_value);

			dup_value = NULL;

			if (path == NULL || comment == NULL || guest_ok == NULL)
				continue; /* Incomplete share definition */
			else {
				shares = (smb_share_t *)
				    FUNC7(sizeof (smb_share_t));
				if (shares == NULL) {
					rc = SA_NO_MEMORY;
					goto out;
				}

				(void) FUNC15(shares->name, name,
				    sizeof (shares->name));

				(void) FUNC15(shares->path, path,
				    sizeof (shares->path));

				(void) FUNC15(shares->comment, comment,
				    sizeof (shares->comment));

				shares->guest_ok = FUNC1(guest_ok);

				shares->next = new_shares;
				new_shares = shares;

				FUNC6(path);
				FUNC6(comment);
				FUNC6(guest_ok);

				path = NULL;
				comment = NULL;
				guest_ok = NULL;
			}
		}

out:
		if (share_file_fp != NULL) {
			FUNC3(share_file_fp);
			share_file_fp = NULL;
		}

		FUNC6(name);
		FUNC6(path);
		FUNC6(comment);
		FUNC6(guest_ok);

		name = NULL;
		path = NULL;
		comment = NULL;
		guest_ok = NULL;
	}
	FUNC2(shares_dir);

	smb_shares = new_shares;

	return (rc);
}
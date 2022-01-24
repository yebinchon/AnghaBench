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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  comment ;

/* Variables and functions */
 char* NET_CMD_ARG_HOST ; 
 char* NET_CMD_PATH ; 
 int SA_OK ; 
 int SA_SYSTEM_ERR ; 
 int SMB_COMMENT_MAX ; 
 int SMB_NAME_MAX ; 
 int FUNC0 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC4(const char *sharename, const char *sharepath)
{
	char *argv[10], *pos;
	char name[SMB_NAME_MAX], comment[SMB_COMMENT_MAX];
	int rc;

	/* Support ZFS share name regexp '[[:alnum:]_-.: ]' */
	FUNC3(name, sharename, sizeof (name));
	name [sizeof (name)-1] = '\0';

	pos = name;
	while (*pos != '\0') {
		switch (*pos) {
		case '/':
		case '-':
		case ':':
		case ' ':
			*pos = '_';
		}

		++pos;
	}

	/*
	 * CMD: net -S NET_CMD_ARG_HOST usershare add Test1 /share/Test1 \
	 *      "Comment" "Everyone:F"
	 */
	FUNC2(comment, sizeof (comment), "Comment: %s", sharepath);

	argv[0] = NET_CMD_PATH;
	argv[1] = (char *)"-S";
	argv[2] = NET_CMD_ARG_HOST;
	argv[3] = (char *)"usershare";
	argv[4] = (char *)"add";
	argv[5] = (char *)name;
	argv[6] = (char *)sharepath;
	argv[7] = (char *)comment;
	argv[8] = "Everyone:F";
	argv[9] = NULL;

	rc = FUNC0(argv[0], argv, 0);
	if (rc < 0)
		return (SA_SYSTEM_ERR);

	/* Reload the share file */
	(void) FUNC1();

	return (SA_OK);
}
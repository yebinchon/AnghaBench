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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC3(
	char	*cmd)
{
	char *label  = FUNC1(&cmd[9], FUNC0("\001"));
	char *verb  = FUNC1(NULL, FUNC0("\001"));
	char *acc = FUNC1(NULL, FUNC0("\001"));
	char *accText  = FUNC1(NULL, FUNC0("\001"));
	char *name  = FUNC1(NULL, FUNC0("\001"));
	char *sense  = FUNC1(NULL, FUNC0("\n"));
	char *filepos  = FUNC1(NULL, FUNC0("\n"));
	if (*acc == '-') {
		acc = NULL;
	}
	if (*accText == '-') {
		accText = NULL;
	}
	FUNC2(label, verb, acc, accText, name, filepos, sense);

}
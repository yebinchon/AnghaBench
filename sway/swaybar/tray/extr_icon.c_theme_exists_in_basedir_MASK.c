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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char*,char*) ; 

__attribute__((used)) static bool FUNC4(char *theme, char *basedir) {
	size_t path_len = FUNC3(NULL, 0, "%s/%s", basedir, theme) + 1;
	char *path = FUNC2(path_len);
	FUNC3(path, path_len, "%s/%s", basedir, theme);
	bool ret = FUNC0(path);
	FUNC1(path);
	return ret;
}
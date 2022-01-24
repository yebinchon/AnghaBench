#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* filter ) (char const*) ;int /*<<< orphan*/  input_file; } ;

/* Variables and functions */
 int PATH_MAX ; 
 TYPE_1__ fc ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

void FUNC5(const char *path, int (*filter)(const char *fn))
{
	char dir[PATH_MAX], *p;
	fc.filter = filter;
	FUNC1(dir, path, sizeof dir);
	for (p=dir; *p; ++p)
		if (*p == '\\') *p = '/';
	FUNC0(dir);
	p = FUNC3(dir, '/');
	if (p)
	{
		*p = 0;
		FUNC2(dir);
		FUNC4(&fc.input_file, p+1);
	}
	else
	{
		FUNC2(".");
		FUNC4(&fc.input_file, dir);
	}
}
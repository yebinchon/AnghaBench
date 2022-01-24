#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,int,...) ; 
 TYPE_1__* FUNC3 () ; 
 long FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char *
FUNC5()
{
	StringInfo buf = FUNC3();
	int major, minor, patch;

	/*
	 * We have to read the server version from GUC and not use any of
	 * the macros. By using any of the macros we would get the version
	 * the extension is compiled against instead of the version actually
	 * running.
	 */
	char *server_version_num_guc = FUNC1("server_version_num", NULL, false);
	long server_version_num = FUNC4(server_version_num_guc, NULL, 10);

	major = server_version_num / 10000;
	minor = (server_version_num / 100) % 100;
	patch = server_version_num % 100;

	if (server_version_num < 100000)
	{
		FUNC0(major == 9 && minor == 6);
		FUNC2(buf, "%d.%d.%d", major, minor, patch);
	}
	else
	{
		FUNC0(major >= 10 && minor == 0);
		FUNC2(buf, "%d.%d", major, patch);
	}

	return buf->data;
}
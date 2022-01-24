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
struct TYPE_4__ {int /*<<< orphan*/  docpath; } ;
typedef  TYPE_1__ pdfapp_t ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC6(pdfapp_t *app, char *uri)
{
	char buf[PATH_MAX];

	/* Relative file:// URI, make it absolute! */
	if (!FUNC4(uri, "file://", 7) && uri[7] != '/')
	{
		char buf_base[PATH_MAX];
		char buf_cwd[PATH_MAX];
		FUNC1(buf_base, app->docpath, sizeof buf_base);
		FUNC3(buf_cwd, sizeof buf_cwd);
		FUNC2(buf, sizeof buf, "file://%s/%s/%s", buf_cwd, buf_base, uri+7);
		FUNC0(buf+7);
		uri = buf;
	}

	FUNC5(app, uri);
}
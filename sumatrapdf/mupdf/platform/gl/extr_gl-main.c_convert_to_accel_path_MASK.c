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
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC1 (char*,size_t,char*,char*,char*) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(char outname[], char *absname, size_t len)
{
	char *tmpdir;
	char *s;

	tmpdir = FUNC2("TEMP");
	if (!tmpdir)
		tmpdir = FUNC2("TMP");
	if (!tmpdir)
		tmpdir = "/var/tmp";
	if (!FUNC0(ctx, tmpdir))
		tmpdir = "/tmp";

	if (absname[0] == '/' || absname[0] == '\\')
		++absname;

	s = absname;
	while (*s) {
		if (*s == '/' || *s == '\\' || *s == ':')
			*s = '%';
		++s;
	}

	if (FUNC1(outname, len, "%s/%s.accel", tmpdir, absname) >= len)
		return 0;
	return 1;
}
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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* conversion_error ; 
 scalar_t__ embedded_loc_filename ; 
 scalar_t__ loc_filename ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 

FILE* FUNC7(const char* filename)
{
	FILE* fd = NULL;
	wchar_t *wfilename = NULL;
	const char* tmp_ext = ".tmp";

	if (filename == NULL)
		return NULL;

	if (loc_filename != embedded_loc_filename) {
		FUNC1(loc_filename);
	}
	if (FUNC2(tmp_ext, &filename[FUNC4(filename)-4]) == 0) {
		loc_filename = embedded_loc_filename;
	} else {
		loc_filename = FUNC3(filename);
	}
	wfilename = FUNC6(filename);
	if (wfilename == NULL) {
		FUNC5(conversion_error, filename);
		goto out;
	}
	fd = FUNC0(wfilename, L"rb");
	if (fd == NULL) {
		FUNC5("localization: could not open '%s'\n", filename);
	}

out:
	FUNC1(wfilename);
	return fd;
}
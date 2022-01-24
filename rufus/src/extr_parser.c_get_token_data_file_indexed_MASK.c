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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  conversion_error ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 

char* FUNC9(const char* token, const char* filename, int index)
{
	int i = 0;
	wchar_t *wtoken = NULL, *wdata= NULL, *wfilename = NULL;
	wchar_t buf[1024];
	FILE* fd = NULL;
	char *ret = NULL;

	if ((filename == NULL) || (token == NULL))
		return NULL;
	if ((filename[0] == 0) || (token[0] == 0))
		return NULL;

	wfilename = FUNC7(filename);
	if (wfilename == NULL) {
		FUNC6(conversion_error, filename);
		goto out;
	}
	wtoken = FUNC7(token);
	if (wfilename == NULL) {
		FUNC6(conversion_error, token);
		goto out;
	}
	fd = FUNC1(wfilename, L"r, ccs=UNICODE");
	if (fd == NULL) goto out;

	// Process individual lines. NUL is always appended.
	// Ideally, we'd check that our buffer fits the line
	while (FUNC3(buf, FUNC0(buf), fd) != NULL) {
		wdata = FUNC4(wtoken, buf);
		if ((wdata != NULL) && (++i == index)) {
			ret = FUNC8(wdata);
			break;
		}
	}

out:
	if (fd != NULL)
		FUNC2(fd);
	FUNC5(wfilename);
	FUNC5(wtoken);
	return ret;
}
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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  sevenzip_path ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 

BOOL FUNC10(const char* image, int index, const char* src, const char* dst)
{
	int n;
	size_t i;
	char cmdline[MAX_PATH];
	char tmpdst[MAX_PATH];
	char index_prefix[] = "#\\";

	FUNC9("Opening: %s:[%d] (7-Zip)", image, index);

	if ((image == NULL) || (src == NULL) || (dst == NULL))
		return FALSE;

	// If you shove more than 9 images in a WIM, don't come complaining
	// that this breaks!
	index_prefix[0] = '0' + index;

	FUNC9("Extracting: %s (From %s)", dst, src);

	// 7z has a quirk where the image index MUST be specified if a
	// WIM has multiple indexes, but it MUST be removed if there is
	// only one image. Because of this (and because 7z will not
	// return an error code if it can't extract the file), we need
	// to issue 2 passes. See github issue #680.
	for (n = 0; n < 2; n++) {
		FUNC7(tmpdst, dst);
		for (i = FUNC8(tmpdst) - 1; (i > 0) && (tmpdst[i] != '\\') && (tmpdst[i] != '/'); i--);
		tmpdst[i] = 0;

		FUNC5(cmdline, "\"%s\" -y e \"%s\" %s%s", sevenzip_path,
			image, (n == 0) ? index_prefix : "", src);
		if (FUNC0(cmdline, tmpdst, FALSE) != 0) {
			FUNC9("  Could not launch 7z.exe: %s", FUNC1());
			return FALSE;
		}

		for (i = FUNC4(src); (i > 0) && (src[i] != '\\') && (src[i] != '/'); i--);
		if (i == 0)
			FUNC6(tmpdst, "\\");
		FUNC6(tmpdst, &src[i]);
		if (FUNC2(tmpdst, 0) == 0)
			// File was extracted => move on
			break;
	}

	if (n >= 2) {
		FUNC9("  7z.exe did not extract %s", tmpdst);
		return FALSE;
	}

	// coverity[toctou]
	if (FUNC3(tmpdst, dst) != 0) {
		FUNC9("  Could not rename %s to %s: errno %d", tmpdst, dst, errno);
		return FALSE;
	}

	return TRUE;
}
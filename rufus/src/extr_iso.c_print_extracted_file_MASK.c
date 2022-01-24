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
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSG_000 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(char* psz_fullpath, int64_t file_length)
{
	size_t i, nul_pos;

	if (psz_fullpath == NULL)
		return;
	// Replace slashes with backslashes and append the size to the path for UI display
	nul_pos = FUNC3(psz_fullpath);
	for (i=0; i<nul_pos; i++)
		if (psz_fullpath[i] == '/') psz_fullpath[i] = '\\';
	FUNC2(&psz_fullpath[nul_pos], 24, " (%s)", FUNC1(file_length, TRUE, FALSE));
	FUNC4("Extracting: %s\n", psz_fullpath);
	FUNC2(&psz_fullpath[nul_pos], 24, " (%s)", FUNC1(file_length, FALSE, FALSE));
	FUNC0(0, MSG_000, psz_fullpath);	// MSG_000 is "%s"
	// ISO9660 cannot handle backslashes
	for (i=0; i<nul_pos; i++)
		if (psz_fullpath[i] == '\\') psz_fullpath[i] = '/';
	// Remove the appended size for extraction
	psz_fullpath[nul_pos] = 0;
}
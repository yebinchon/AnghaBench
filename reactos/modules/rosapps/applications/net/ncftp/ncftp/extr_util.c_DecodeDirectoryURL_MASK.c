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
typedef  int /*<<< orphan*/  LineListPtr ;
typedef  int /*<<< orphan*/  FTPCIPtr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const,char*,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char) ; 
 char* FUNC4 (char*,char) ; 

int
FUNC5(
	const FTPCIPtr cip,	/* area pointed to may be modified */
	char *url,		/* always modified */
	LineListPtr cdlist,	/* always modified */
	char *fn,		/* always modified */
	size_t fnsize
)
{
	int rc;
	char urlstr2[256];
	char *cp;

	/* Add a trailing slash, if needed, i.e., convert
	 * "ftp://ftp.gnu.org/pub/gnu" to
	 * "ftp://ftp.gnu.org/pub/gnu/"
	 *
	 * We also generalize and assume that if the user specified
	 * something with a .extension that the user was intending
	 * to specify a file instead of a directory.
	 */
	cp = FUNC4(url, '/');
	if ((cp != NULL) && (cp[1] != '\0') && (FUNC3(cp, '.') == NULL)) {

		(void) FUNC2(urlstr2, url);
		(void) FUNC1(urlstr2, "/");
		url = urlstr2;
	}
	rc = FUNC0(cip, url, cdlist, fn, fnsize, NULL, NULL);
	return (rc);
}
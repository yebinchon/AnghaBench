#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* pszNextLastCDComponent; char* pszPD; char* pszPDPlusSlash; char* szCD; char* szCDPlusSlash; char* szCurDrive; char* pszLastCDComponent; char* szParentDir; char* szParentDirPlusSlash; char* szNextLastCDComponent; int /*<<< orphan*/  szCurDriveSlash; } ;
typedef  TYPE_1__ DirComponents ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 void* FUNC9 (char*,char) ; 

__attribute__((used)) static void FUNC10(DirComponents* p)
{
	/* While the following code seems to work, it's an unholy mess
	 * and should probably be cleaned up.
	 */
	BOOLEAN bOK;

	p->pszNextLastCDComponent = 0;
	p->pszPD = 0;
	p->pszPDPlusSlash = 0;

	FUNC0(sizeof(p->szCD) / sizeof(*p->szCD), p->szCD);

	bOK = FUNC8(p->szCD) >= 2 && p->szCD[1] == ':';
	FUNC1(bOK, "Expected curdir to be a drive letter. It's not");

	if (!bOK) {
		FUNC4("Curdir is \"%s\"\n", p->szCD);
		FUNC2(1);
	}

	bOK = p->szCD[2] == '\\';
	FUNC1(bOK, "CD is missing a slash as its third character");
	if (!bOK) {
		FUNC4("CD is \"%s\"\n", p->szCD);
		FUNC2(1);
	}

	// Note that if executed from the root directory, a backslash is
	// already appended.
	FUNC7(p->szCDPlusSlash, p->szCD);
	if (FUNC8(p->szCD) > 3) {
		// Append trailing backslash
		FUNC6(p->szCDPlusSlash, "\\");
	}

	FUNC3(p->szCurDrive, p->szCD, 2);
	p->szCurDrive[2] = 0;
	FUNC5(p->szCurDriveSlash, "%s\\", p->szCurDrive);

	p->pszLastCDComponent = FUNC9(p->szCD, '\\');
	if (p->pszLastCDComponent)
	{
		// We have a parent directory
		FUNC3(p->szParentDir, p->szCD, p->pszLastCDComponent - p->szCD);
		p->szParentDir[p->pszLastCDComponent - p->szCD] = 0;
		p->pszPD = p->szParentDir;
		if (FUNC8(p->szParentDir) == 2 && p->szParentDir[1] == ':') {
			// When run from root directory, this is expected to
			// have a trailing backslash
			FUNC6(p->szParentDir, "\\");
		}
		FUNC7(p->szParentDirPlusSlash, p->szParentDir);
		if (p->szParentDirPlusSlash[FUNC8(p->szParentDirPlusSlash)-1] != '\\') {
			FUNC6(p->szParentDirPlusSlash, "\\");
		}
		p->pszPDPlusSlash = p->szParentDirPlusSlash;

		// Check if we have a directory above that too.
		*p->pszLastCDComponent = 0;
		p->pszNextLastCDComponent = FUNC9(p->szCD, '\\');
		*p->pszLastCDComponent = '\\';
		if (p->pszNextLastCDComponent) {
			++p->pszNextLastCDComponent; // skip the leading slash
			if (p->pszNextLastCDComponent + 1 >= p->pszLastCDComponent) {
				p->pszNextLastCDComponent = 0;
			} else {
				const size_t siz = p->pszLastCDComponent - p->pszNextLastCDComponent;
				FUNC3(p->szNextLastCDComponent, p->pszNextLastCDComponent, siz);
				p->szNextLastCDComponent[siz] = 0;
				p->pszNextLastCDComponent = p->szNextLastCDComponent;
			}
		}
	}
	if (p->pszLastCDComponent && p->pszLastCDComponent[1] == 0) {
		// If the backslash is the last character in the path,
		// this is a NULL-component.
		p->pszLastCDComponent = 0;
	} else {
		++p->pszLastCDComponent; // skip the leading slash
	}
}
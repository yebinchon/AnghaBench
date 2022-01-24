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
typedef  int LPSTR ;
typedef  int /*<<< orphan*/ * LPCSTR ;
typedef  int /*<<< orphan*/  FOURCC ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMIO_TOUPPER ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static FOURCC FUNC10(LPCSTR szFileName)
{
    /* Filenames are of the form file.ext{+ABC}
       For now, we take the last '+' if present */

    FOURCC ret = 0;

    /* Note that ext{Start,End} point to the . and + respectively */
    LPSTR extEnd;
    LPSTR extStart;

    FUNC1("(%s)\n", FUNC3(szFileName));

    if (!szFileName)
	return ret;

    /* Find the last '.' */
    extStart = FUNC9(szFileName,'.');

    if (!extStart) {
         FUNC0("No . in szFileName: %s\n", FUNC3(szFileName));
    } else {
        CHAR ext[5];

        /* Find the '+' afterwards */
        extEnd = FUNC7(extStart,'+');
        if (extEnd) {

            if (extEnd - extStart - 1 > 4)
                FUNC2("Extension length > 4\n");
            FUNC4(ext, extStart + 1, FUNC5(extEnd-extStart,5));

        } else {
            /* No + so just an extension */
            if (FUNC8(extStart) > 4) {
                FUNC2("Extension length > 4\n");
            }
            FUNC4(ext, extStart + 1, 5);
        }
        FUNC1("Got extension: %s\n", FUNC3(ext));

        /* FOURCC codes identifying file-extensions must be uppercase */
        ret = FUNC6(ext, MMIO_TOUPPER);
    }
    return ret;
}
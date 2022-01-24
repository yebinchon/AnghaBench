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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINESIZE ; 
 int PATH_MAX ; 
 char* UNZIP_FMT ; 
 char* UNZIP_FMT_CAB ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 int /*<<< orphan*/  opt_7z ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(char *dir, char *iso)
{
    char Line[LINESIZE];
    int res = 0;
    char iso_tmp[PATH_MAX];
    int iso_copied = 0;
    FILE *fiso;

    FUNC7(iso_tmp, iso);
    if ((fiso = FUNC2(iso, "a")) == NULL)
    {
        FUNC3(1, "Open of %s failed (locked for writing?), trying to copy first\n", iso);

        FUNC6(iso_tmp, "~");
        if (FUNC0(iso, iso_tmp))
            return 3;
        iso_copied = 1;
    }
    else
        FUNC1(fiso);

    FUNC5(Line, UNZIP_FMT, opt_7z, iso_tmp, dir);
    if (FUNC8(Line) < 0)
    {
        FUNC3(0, "\nCannot unpack %s (check 7z path!)\n", iso_tmp);
        FUNC3(1, "Failed to execute: '%s'\n", Line);
        res = 1;
    }
    else
    {
        FUNC3(2, "\nUnpacking reactos.cab in %s\n", dir);
        FUNC5(Line, UNZIP_FMT_CAB, opt_7z, dir, dir);
        if (FUNC8(Line) < 0)
        {
            FUNC3(0, "\nCannot unpack reactos.cab in %s\n", dir);
            FUNC3(1, "Failed to execute: '%s'\n", Line);
            res = 2;
        }
    }
    if (iso_copied)
        FUNC4(iso_tmp);
    return res;
}
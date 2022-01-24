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
 int MAX_PATH ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    const char* path = "c:\\\x83\x5c\x83\x74\x83\x67.bin";
    char drive[3], dir[MAX_PATH], fname[MAX_PATH], ext[MAX_PATH];
    int prev_cp = FUNC0();

    /* SBCS codepage */
    FUNC1(1252);
    FUNC2(path, drive, dir, fname, ext);
    FUNC3(!FUNC4(drive, "c:"), "got %s\n", drive);
    FUNC3(!FUNC4(dir, "\\\x83\x5c"), "got %s\n", dir);
    FUNC3(!FUNC4(fname, "\x83\x74\x83\x67"), "got %s\n", fname);
    FUNC3(!FUNC4(ext, ".bin"), "got %s\n", ext);

    /* MBCS (Japanese) codepage */
    FUNC1(932);
    FUNC2(path, drive, dir, fname, ext);
    FUNC3(!FUNC4(drive, "c:"), "got %s\n", drive);
    FUNC3(!FUNC4(dir, "\\"), "got %s\n", dir);
    FUNC3(!FUNC4(fname, "\x83\x5c\x83\x74\x83\x67"), "got %s\n", fname);
    FUNC3(!FUNC4(ext, ".bin"), "got %s\n", ext);

    FUNC1(prev_cp);
}
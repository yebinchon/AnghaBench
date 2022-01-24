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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FILE_ATTRIBUTE_READONLY ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int _O_BINARY ; 
 int _O_TEXT ; 
 int _S_IREAD ; 
 int _S_IWRITE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char*,int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    int fd, pos, count, readonly, old_fmode = 0, have_fmode;
    char buf[6], testdata[4] = {'a', '\n', 'b', '\n'};

    have_fmode = &p__get_fmode && &p__set_fmode && !FUNC11(&old_fmode);
    if (!have_fmode)
        FUNC13("_fmode can't be set, skipping mode tests\n");

    if (have_fmode)
        FUNC12(_O_TEXT);
    fd = FUNC4("_creat.tst", 0);
    FUNC10(fd > 0, "_creat failed\n");
    FUNC8(fd, testdata, 4);
    if (have_fmode) {
        pos = FUNC7(fd);
        FUNC10(pos == 6, "expected pos 6 (text mode), got %d\n", pos);
    }
    FUNC10(FUNC5(fd, SEEK_SET, 0) == 0, "_lseek failed\n");
    count = FUNC6(fd, buf, 6);
    FUNC10(count == 4, "_read returned %d, expected 4\n", count);
    count = count > 0 ? count > 4 ? 4 : count : 0;
    FUNC10(FUNC9(buf, testdata, count) == 0, "_read returned wrong contents\n");
    FUNC3(fd);
    readonly = FUNC1("_creat.tst") & FILE_ATTRIBUTE_READONLY;
    FUNC10(readonly, "expected read-only file\n");
    FUNC2("_creat.tst", FILE_ATTRIBUTE_NORMAL);
    FUNC0("_creat.tst");

    if (have_fmode)
        FUNC12(_O_BINARY);
    fd = FUNC4("_creat.tst", _S_IREAD | _S_IWRITE);
    FUNC10(fd > 0, "_creat failed\n");
    FUNC8(fd, testdata, 4);
    if (have_fmode) {
        pos = FUNC7(fd);
        FUNC10(pos == 4, "expected pos 4 (binary mode), got %d\n", pos);
    }
    FUNC10(FUNC5(fd, SEEK_SET, 0) == 0, "_lseek failed\n");
    count = FUNC6(fd, buf, 6);
    FUNC10(count == 4, "_read returned %d, expected 4\n", count);
    count = count > 0 ? count > 4 ? 4 : count : 0;
    FUNC10(FUNC9(buf, testdata, count) == 0, "_read returned wrong contents\n");
    FUNC3(fd);
    readonly = FUNC1("_creat.tst") & FILE_ATTRIBUTE_READONLY;
    FUNC10(!readonly, "expected rw file\n");
    FUNC2("_creat.tst", FILE_ATTRIBUTE_NORMAL);
    FUNC0("_creat.tst");

    if (have_fmode)
        FUNC12(old_fmode);
}
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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 () ; 
 int FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 

__attribute__((used)) static void FUNC16(void)
{
    char path[MAX_PATH], buf[MAX_PATH];
    HANDLE file;
    int ret;
    WCHAR curdir[MAX_PATH];

    if (!&pGetLongPathNameA) return;

    FUNC4(MAX_PATH, curdir);
    FUNC8(MAX_PATH, path);
    ret = FUNC10(path);
    FUNC12(ret, "SetCurrentDirectory error %d\n", FUNC6());

    ret = FUNC1("foo", NULL);
    FUNC12(ret, "CreateDirectory error %d\n", FUNC6());
    file = FUNC2("foo\\file", GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, 0);
    FUNC12(file != INVALID_HANDLE_VALUE, "failed to create temp file\n");
    FUNC0(file);
    ret = FUNC1("bar", NULL);
    FUNC12(ret, "CreateDirectory error %d\n", FUNC6());
    ret = FUNC10("bar");
    FUNC12(ret, "SetCurrentDirectory error %d\n", FUNC6());

    ret = FUNC5("..\\foo\\file");
    FUNC12(ret != INVALID_FILE_ATTRIBUTES, "GetFileAttributes error %d\n", FUNC6());

    FUNC15(buf, "deadbeef");
    ret = FUNC13(".", buf, MAX_PATH);
    FUNC12(ret, "GetLongPathName error %d\n", FUNC6());
    FUNC12(!FUNC14(buf, "."), "expected ., got %s\n", buf);
    FUNC15(buf, "deadbeef");
    ret = FUNC7(".", buf, MAX_PATH);
    FUNC12(ret, "GetShortPathName error %d\n", FUNC6());
    FUNC12(!FUNC14(buf, "."), "expected ., got %s\n", buf);

    FUNC15(buf, "deadbeef");
    ret = FUNC13("..", buf, MAX_PATH);
    FUNC12(ret, "GetLongPathName error %d\n", FUNC6());
    FUNC12(!FUNC14(buf, ".."), "expected .., got %s\n", buf);
    FUNC15(buf, "deadbeef");
    ret = FUNC7("..", buf, MAX_PATH);
    FUNC12(ret, "GetShortPathName error %d\n", FUNC6());
    FUNC12(!FUNC14(buf, ".."), "expected .., got %s\n", buf);

    FUNC15(buf, "deadbeef");
    ret = FUNC13("..\\foo\\file", buf, MAX_PATH);
    FUNC12(ret, "GetLongPathName error %d\n", FUNC6());
    FUNC12(!FUNC14(buf, "..\\foo\\file"), "expected ..\\foo\\file, got %s\n", buf);
    FUNC15(buf, "deadbeef");
    ret = FUNC7("..\\foo\\file", buf, MAX_PATH);
    FUNC12(ret, "GetShortPathName error %d\n", FUNC6());
    FUNC12(!FUNC14(buf, "..\\foo\\file"), "expected ..\\foo\\file, got %s\n", buf);

    FUNC15(buf, "deadbeef");
    ret = FUNC13(".\\..\\foo\\file", buf, MAX_PATH);
    FUNC12(ret, "GetLongPathName error %d\n", FUNC6());
    FUNC12(!FUNC14(buf, ".\\..\\foo\\file"), "expected .\\..\\foo\\file, got %s\n", buf);
    FUNC15(buf, "deadbeef");
    ret = FUNC7(".\\..\\foo\\file", buf, MAX_PATH);
    FUNC12(ret, "GetShortPathName error %d\n", FUNC6());
    FUNC12(!FUNC14(buf, ".\\..\\foo\\file"), "expected .\\..\\foo\\file, got %s\n", buf);

    /* test double delimiters */
    FUNC15(buf, "deadbeef");
    ret = FUNC13("..\\\\foo\\file", buf, MAX_PATH);
    FUNC12(ret, "GetLongPathName error %d\n", FUNC6());
    FUNC12(!FUNC14(buf, "..\\\\foo\\file"), "expected ..\\\\foo\\file, got %s\n", buf);
    FUNC15(buf, "deadbeef");
    ret = FUNC7("..\\\\foo\\file", buf, MAX_PATH);
    FUNC12(ret, "GetShortPathName error %d\n", FUNC6());
    FUNC12(!FUNC14(buf, "..\\\\foo\\file"), "expected ..\\\\foo\\file, got %s\n", buf);

    FUNC10("..");
    FUNC3("foo\\file");
    FUNC9("foo");
    FUNC9("bar");
    FUNC11(curdir);
}
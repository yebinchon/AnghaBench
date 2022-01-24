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
typedef  char* LPSTR ;

/* Variables and functions */
 int FUNC0 () ; 
 int LONG_LEN ; 
 int MAX_PATH ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    LPSTR str;
    char path[MAX_PATH];
    char too_long[LONG_LEN];

    /* try a NULL path */
    FUNC2(0xdeadbeef);
    str = FUNC1(NULL);
    FUNC7(str == NULL, "Expected str == NULL, got %p\n", str);
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* try an empty path */
    path[0] = '\0';
    FUNC2(0xdeadbeef);
    str = FUNC1(path);
    FUNC7(str == (path + FUNC5(path)), "Expected str to point to end of path, got %p\n", str);
    FUNC7(!path[0], "Expected empty string, got %i\n", FUNC5(path));
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* try a relative path */
    FUNC4(path, "one\\two");
    FUNC2(0xdeadbeef);
    str = FUNC1(path);
    FUNC7(str == (path + FUNC5(path)), "Expected str to point to end of path, got %p\n", str);
    FUNC7(!FUNC3(path, "one\\two\\"), "Expected one\\two\\, got %s\n", path);
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* try periods */
    FUNC4(path, "one\\..\\two");
    FUNC2(0xdeadbeef);
    str = FUNC1(path);
    FUNC7(str == (path + FUNC5(path)), "Expected str to point to end of path, got %p\n", str);
    FUNC7(!FUNC3(path, "one\\..\\two\\"), "Expected one\\..\\two\\, got %s\n", path);
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* try just a space */
    FUNC4(path, " ");
    FUNC2(0xdeadbeef);
    str = FUNC1(path);
    FUNC7(str == (path + FUNC5(path)), "Expected str to point to end of path, got %p\n", str);
    FUNC7(!FUNC3(path, " \\"), "Expected  \\, got %s\n", path);
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* path already has backslash */
    FUNC4(path, "C:\\one\\");
    FUNC2(0xdeadbeef);
    str = FUNC1(path);
    FUNC7(str == (path + FUNC5(path)), "Expected str to point to end of path, got %p\n", str);
    FUNC7(!FUNC3(path, "C:\\one\\"), "Expected C:\\one\\, got %s\n", path);
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    FUNC6(too_long, 'a', LONG_LEN);
    too_long[LONG_LEN - 1] = '\0';

    /* path is longer than MAX_PATH */
    FUNC2(0xdeadbeef);
    str = FUNC1(too_long);
    FUNC7(str == NULL, "Expected str == NULL, got %p\n", str);
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());
}
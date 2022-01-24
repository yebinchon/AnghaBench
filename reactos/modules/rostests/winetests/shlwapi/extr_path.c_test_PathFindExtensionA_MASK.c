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
    LPSTR ext;
    char path[MAX_PATH];
    char too_long[LONG_LEN];

    /* try a NULL path */
    FUNC2(0xdeadbeef);
    ext = FUNC1(NULL);
    FUNC7(ext == NULL, "Expected NULL, got %p\n", ext);
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* try an empty path */
    path[0] = '\0';
    FUNC2(0xdeadbeef);
    ext = FUNC1(path);
    FUNC7(ext == path, "Expected ext == path, got %p\n", ext);
    FUNC7(!ext[0], "Expected length 0, got %i\n", FUNC5(ext));
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* try a path without an extension */
    FUNC4(path, "file");
    FUNC2(0xdeadbeef);
    ext = FUNC1(path);
    FUNC7(ext == path + FUNC5(path), "Expected ext == path, got %p\n", ext);
    FUNC7(!ext[0], "Expected length 0, got %i\n", FUNC5(ext));
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* try a path with an extension */
    FUNC4(path, "file.txt");
    FUNC2(0xdeadbeef);
    ext = FUNC1(path);
    FUNC7(ext == path + FUNC5("file"),
       "Expected ext == path + lstrlenA(\"file\"), got %p\n", ext);
    FUNC7(!FUNC3(ext, ".txt"), "Expected .txt, got %s\n", ext);
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* try a path with two extensions */
    FUNC4(path, "file.txt.doc");
    FUNC2(0xdeadbeef);
    ext = FUNC1(path);
    FUNC7(ext == path + FUNC5("file.txt"),
       "Expected ext == path + lstrlenA(\"file.txt\"), got %p\n", ext);
    FUNC7(!FUNC3(ext, ".doc"), "Expected .txt, got %s\n", ext);
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* try a path longer than MAX_PATH without an extension*/
    FUNC6(too_long, 'a', LONG_LEN);
    too_long[LONG_LEN - 1] = '\0';
    FUNC2(0xdeadbeef);
    ext = FUNC1(too_long);
    FUNC7(ext == too_long + LONG_LEN - 1, "Expected ext == too_long + LONG_LEN - 1, got %p\n", ext);
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* try a path longer than MAX_PATH with an extension*/
    FUNC6(too_long, 'a', LONG_LEN);
    too_long[LONG_LEN - 1] = '\0';
    FUNC4(too_long + 300, ".abcde");
    too_long[FUNC5(too_long)] = 'a';
    FUNC2(0xdeadbeef);
    ext = FUNC1(too_long);
    FUNC7(ext == too_long + 300, "Expected ext == too_long + 300, got %p\n", ext);
    FUNC7(FUNC5(ext) == LONG_LEN - 301, "Expected LONG_LEN - 301, got %i\n", FUNC5(ext));
    FUNC7(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());
}
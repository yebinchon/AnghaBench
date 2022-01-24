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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*,char*,char*,char const**,int /*<<< orphan*/ **) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void) {
        const char *dirs[] = {"/tmp/foo/bar", "/tmp", NULL};

        char name[] = "/tmp/test-search_and_fopen.XXXXXX";
        int fd, r;
        FILE *f;

        fd = FUNC4(name);
        FUNC0(fd >= 0);
        FUNC2(fd);

        r = FUNC5(FUNC1(name), "r", NULL, dirs, &f);
        FUNC0(r >= 0);
        FUNC3(f);

        r = FUNC5(name, "r", NULL, dirs, &f);
        FUNC0(r >= 0);
        FUNC3(f);

        r = FUNC5(FUNC1(name), "r", "/", dirs, &f);
        FUNC0(r >= 0);
        FUNC3(f);

        r = FUNC5("/a/file/which/does/not/exist/i/guess", "r", NULL, dirs, &f);
        FUNC0(r < 0);
        r = FUNC5("afilewhichdoesnotexistiguess", "r", NULL, dirs, &f);
        FUNC0(r < 0);

        r = FUNC6(name);
        FUNC0(r == 0);

        r = FUNC5(FUNC1(name), "r", NULL, dirs, &f);
        FUNC0(r < 0);
}
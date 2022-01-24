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
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char) ; 

__attribute__((used)) static void FUNC7(void)
{
    LPSTR root;
    char path[10];
    char root_expected[26][4];
    char drive;
    int j;

    /* set up the expected paths */
    for (drive = 'A'; drive <= 'Z'; drive++)
        FUNC6(root_expected[drive - 'A'], "%c:\\", drive);

    /* test the expected values */
    for (j = 0; j < 26; j++)
    {
        FUNC2(0xdeadbeef);
        FUNC4(path, "aaaaaaaaa");
        root = FUNC1(path, j);
        FUNC5(root == path, "Expected root == path, got %p\n", root);
        FUNC5(!FUNC3(root, root_expected[j]), "Expected %s, got %s\n", root_expected[j], root);
        FUNC5(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());
    }

    /* test a negative drive number */
    FUNC2(0xdeadbeef);
    FUNC4(path, "aaaaaaaaa");
    root = FUNC1(path, -1);
    FUNC5(root == path, "Expected root == path, got %p\n", root);
    FUNC5(!FUNC3(path, "aaaaaaaaa") || !path[0], /* Vista */
       "Expected aaaaaaaaa or empty string, got %s\n", path);
    FUNC5(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* test a drive number greater than 25 */
    FUNC2(0xdeadbeef);
    FUNC4(path, "aaaaaaaaa");
    root = FUNC1(path, 26);
    FUNC5(root == path, "Expected root == path, got %p\n", root);
    FUNC5(!FUNC3(path, "aaaaaaaaa") || !path[0], /* Vista */
       "Expected aaaaaaaaa or empty string, got %s\n", path);
    FUNC5(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* length of path is less than 4 */
    FUNC2(0xdeadbeef);
    FUNC4(path, "aa");
    root = FUNC1(path, 0);
    FUNC5(root == path, "Expected root == path, got %p\n", root);
    FUNC5(!FUNC3(path, "A:\\"), "Expected A:\\, got %s\n", path);
    FUNC5(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());

    /* path is NULL */
    FUNC2(0xdeadbeef);
    root = FUNC1(NULL, 0);
    FUNC5(root == NULL, "Expected root == NULL, got %p\n", root);
    FUNC5(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %d\n", FUNC0());
}
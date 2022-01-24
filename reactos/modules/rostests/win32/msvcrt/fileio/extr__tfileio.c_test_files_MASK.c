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
 int /*<<< orphan*/  TEST_B1_FILE_SIZE ; 
 int /*<<< orphan*/  TEST_B2_FILE_SIZE ; 
 int /*<<< orphan*/  TEST_B3_FILE_SIZE ; 
 int /*<<< orphan*/  TEST_B4_FILE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dos_data ; 
 int /*<<< orphan*/  nix_data ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 

__attribute__((used)) static int FUNC10(int test_num, char* type)
{
    int result = 0;

    FUNC2("performing test: %d (%s)\n", test_num, type);


    if (FUNC7(FUNC0("zerosize.foo"))) {
        FUNC2("System unable to truncate files yet, unlinking:\n");
        FUNC9();
    }

    switch (test_num) {
    case 1:
        result = FUNC8(FUNC0("text.dos"), dos_data, 166, TEST_B1_FILE_SIZE);
        break;
    case 2:
        result = FUNC3(FUNC0("binary.dos"), dos_data, TEST_B2_FILE_SIZE, 166);
        break;
    case 3:
        result = FUNC8(FUNC0("text.nix"), nix_data, 162, TEST_B3_FILE_SIZE);
        break;
    case 4:
        result = FUNC3(FUNC0("binary.nix"), nix_data, TEST_B4_FILE_SIZE, 162);
        break;
    case 5:
        result = FUNC5();
        break;
    case 6:
        result = FUNC4();
        break;
    case 7:
        result = FUNC6();
        break;
    case -1:
        result = FUNC9();
        break;
    default:
        FUNC1(FUNC0("no test number selected\n"));
        break;
    }
    return result;
}
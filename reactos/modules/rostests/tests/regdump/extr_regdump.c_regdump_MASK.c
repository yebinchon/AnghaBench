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
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  default_cmd_line1 ; 
 int /*<<< orphan*/  default_cmd_line2 ; 
 int /*<<< orphan*/  default_cmd_line3 ; 
 int /*<<< orphan*/  default_cmd_line4 ; 
 int /*<<< orphan*/  default_cmd_line5 ; 
 int /*<<< orphan*/  default_cmd_line6 ; 
 int /*<<< orphan*/  default_cmd_line7 ; 
 int /*<<< orphan*/  default_cmd_line8 ; 
 int /*<<< orphan*/  default_cmd_line9 ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(int argc, char* argv[])
{
    char Buffer[500];

    if (argc > 1) {
//      if (0 == _tcsstr(argv[1], _T("HKLM"))) {
        if (FUNC6(argv[1], "help")) {
            FUNC8(argv[0]);
        } else if (FUNC6(argv[1], "HKCR")) {
            FUNC2('1');
        } else if (FUNC6(argv[1], "HKCU")) {
            FUNC2('2');
        } else if (FUNC6(argv[1], "HKLM")) {
            FUNC2('3');
        } else if (FUNC6(argv[1], "HKU")) {
            FUNC2('4');
        } else if (FUNC6(argv[1], "HKCC")) {
            FUNC2('5');
        } else if (FUNC6(argv[1], "HKRR")) {
            FUNC2('6');
        } else {
            FUNC3("started with argc = %d, argv[1] = %s (unknown?)\n", argc, argv[1]);
        }
        return 0;
    }
    FUNC4();
    while (1) {
        FUNC0(Buffer, sizeof(Buffer));
        switch (FUNC7(Buffer[0])) {
        case '0':
            return(0);
        case '1':
            FUNC5(Buffer, default_cmd_line1);
            goto doit;
        case '2':
            FUNC5(Buffer, default_cmd_line2);
            goto doit;
        case '3':
            FUNC5(Buffer, default_cmd_line3);
            goto doit;
        case '4':
            FUNC5(Buffer, default_cmd_line4);
            goto doit;
        case '5':
            FUNC5(Buffer, default_cmd_line5);
            goto doit;
        case '6':
            FUNC5(Buffer, default_cmd_line6);
            goto doit;
        case '7':
            FUNC5(Buffer, default_cmd_line7);
            goto doit;
        case '8':
            FUNC5(Buffer, default_cmd_line8);
            goto doit;
        case '9':
            FUNC5(Buffer, default_cmd_line9);
            goto doit;
        case 'A':
        case 'B':
        case 'C':
        case 'D':
        case 'E':
        case 'F':
            FUNC2(FUNC7(Buffer[0]) - 'A' + 1);
            break;
        default: doit:
            if (!FUNC1(Buffer)) {
                FUNC3("invalid input.\n");
                FUNC4();
            } else {
                FUNC3("done.\n");
            }
            break;
        }
    }
    return 0;
}
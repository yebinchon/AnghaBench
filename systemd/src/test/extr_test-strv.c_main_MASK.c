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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  STRV_MAKE_EMPTY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 (char*,int /*<<< orphan*/ ) ; 

int FUNC41(int argc, char *argv[]) {
        FUNC3();
        FUNC5();
        FUNC6();
        FUNC4();
        FUNC17();
        FUNC18();
        FUNC19();
        FUNC13();
        FUNC14();
        FUNC15();
        FUNC24();
        FUNC25();

        FUNC40("    foo=bar     \"waldo\"    zzz    ", FUNC0("foo=bar", "waldo", "zzz"));
        FUNC40("", STRV_MAKE_EMPTY);
        FUNC40(" ", STRV_MAKE_EMPTY);
        FUNC40("   ", STRV_MAKE_EMPTY);
        FUNC40("   x", FUNC0("x"));
        FUNC40("x   ", FUNC0("x"));
        FUNC40("  x   ", FUNC0("x"));
        FUNC40("  \"x\"   ", FUNC0("x"));
        FUNC40("  'x'   ", FUNC0("x"));
        FUNC40("  'x\"'   ", FUNC0("x\""));
        FUNC40("  \"x'\"   ", FUNC0("x'"));
        FUNC40("a  '--b=c \"d e\"'", FUNC0("a", "--b=c \"d e\""));

        /* trailing backslashes */
        FUNC40("  x\\\\", FUNC0("x\\"));
        FUNC2("  x\\");

        FUNC2("a  --b='c \"d e\"''");
        FUNC2("a  --b='c \"d e\" '\"");
        FUNC2("a  --b='c \"d e\"garbage");
        FUNC2("'");
        FUNC2("\"");
        FUNC2("'x'y'g");

        FUNC35();
        FUNC36();
        FUNC37();
        FUNC38();
        FUNC39();
        FUNC28();
        FUNC27();
        FUNC34();
        FUNC10();
        FUNC11();
        FUNC8();
        FUNC12();
        FUNC21();
        FUNC22();
        FUNC30();
        FUNC29();
        FUNC7();
        FUNC23();
        FUNC31();
        FUNC32();
        FUNC33();
        FUNC9();
        FUNC26();
        FUNC20();

        FUNC1();
        FUNC16();

        return 0;
}
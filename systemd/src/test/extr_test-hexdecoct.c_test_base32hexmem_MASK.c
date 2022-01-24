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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(void) {
        char *b32;

        b32 = FUNC2("", FUNC0(""), true);
        FUNC1(b32);
        FUNC1(FUNC4(b32, ""));
        FUNC3(b32);

        b32 = FUNC2("f", FUNC0("f"), true);
        FUNC1(b32);
        FUNC1(FUNC4(b32, "CO======"));
        FUNC3(b32);

        b32 = FUNC2("fo", FUNC0("fo"), true);
        FUNC1(b32);
        FUNC1(FUNC4(b32, "CPNG===="));
        FUNC3(b32);

        b32 = FUNC2("foo", FUNC0("foo"), true);
        FUNC1(b32);
        FUNC1(FUNC4(b32, "CPNMU==="));
        FUNC3(b32);

        b32 = FUNC2("foob", FUNC0("foob"), true);
        FUNC1(b32);
        FUNC1(FUNC4(b32, "CPNMUOG="));
        FUNC3(b32);

        b32 = FUNC2("fooba", FUNC0("fooba"), true);
        FUNC1(b32);
        FUNC1(FUNC4(b32, "CPNMUOJ1"));
        FUNC3(b32);

        b32 = FUNC2("foobar", FUNC0("foobar"), true);
        FUNC1(b32);
        FUNC1(FUNC4(b32, "CPNMUOJ1E8======"));
        FUNC3(b32);

        b32 = FUNC2("", FUNC0(""), false);
        FUNC1(b32);
        FUNC1(FUNC4(b32, ""));
        FUNC3(b32);

        b32 = FUNC2("f", FUNC0("f"), false);
        FUNC1(b32);
        FUNC1(FUNC4(b32, "CO"));
        FUNC3(b32);

        b32 = FUNC2("fo", FUNC0("fo"), false);
        FUNC1(b32);
        FUNC1(FUNC4(b32, "CPNG"));
        FUNC3(b32);

        b32 = FUNC2("foo", FUNC0("foo"), false);
        FUNC1(b32);
        FUNC1(FUNC4(b32, "CPNMU"));
        FUNC3(b32);

        b32 = FUNC2("foob", FUNC0("foob"), false);
        FUNC1(b32);
        FUNC1(FUNC4(b32, "CPNMUOG"));
        FUNC3(b32);

        b32 = FUNC2("fooba", FUNC0("fooba"), false);
        FUNC1(b32);
        FUNC1(FUNC4(b32, "CPNMUOJ1"));
        FUNC3(b32);

        b32 = FUNC2("foobar", FUNC0("foobar"), false);
        FUNC1(b32);
        FUNC1(FUNC4(b32, "CPNMUOJ1E8"));
        FUNC3(b32);
}
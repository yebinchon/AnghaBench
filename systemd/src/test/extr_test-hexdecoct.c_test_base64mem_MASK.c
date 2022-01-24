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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(void) {
        char *b64;

        FUNC1(FUNC2("", FUNC0(""), &b64) == 0);
        FUNC1(FUNC4(b64, ""));
        FUNC3(b64);

        FUNC1(FUNC2("f", FUNC0("f"), &b64) == 4);
        FUNC1(FUNC4(b64, "Zg=="));
        FUNC3(b64);

        FUNC1(FUNC2("fo", FUNC0("fo"), &b64) == 4);
        FUNC1(FUNC4(b64, "Zm8="));
        FUNC3(b64);

        FUNC1(FUNC2("foo", FUNC0("foo"), &b64) == 4);
        FUNC1(FUNC4(b64, "Zm9v"));
        FUNC3(b64);

        FUNC1(FUNC2("foob", FUNC0("foob"), &b64) == 8);
        FUNC1(FUNC4(b64, "Zm9vYg=="));
        FUNC3(b64);

        FUNC1(FUNC2("fooba", FUNC0("fooba"), &b64) == 8);
        FUNC1(FUNC4(b64, "Zm9vYmE="));
        FUNC3(b64);

        FUNC1(FUNC2("foobar", FUNC0("foobar"), &b64) == 8);
        FUNC1(FUNC4(b64, "Zm9vYmFy"));
        FUNC3(b64);
}
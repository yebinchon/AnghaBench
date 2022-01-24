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
 int /*<<< orphan*/  lookup ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char*,char*) ; 

int FUNC6(int argc, char *argv[]) {
        char *r;

        FUNC0(r = FUNC3("@@@foobar@xyz@HALLO@foobar@test@@testtest@TEST@...@@@", lookup, NULL));
        FUNC2(r);
        FUNC0(FUNC4(r, "@@@foobar@xyz<<<HALLO>>>foobar@test@@testtest<<<TEST>>>...@@@"));
        FUNC1(r);

        FUNC0(r = FUNC5("XYZFFFFXYZFFFFXYZ", "XYZ", "ABC"));
        FUNC2(r);
        FUNC0(FUNC4(r, "ABCFFFFABCFFFFABC"));
        FUNC1(r);

        return 0;
}
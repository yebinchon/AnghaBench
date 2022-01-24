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
 int HISTORY ; 
 int STRING_LENGTH_WRAPPED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*) ; 
 scalar_t__* flag ; 
 char* input_line ; 
 int /*<<< orphan*/ * lines ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x ; 
 int y ; 

void FUNC7()
{
    int count = 0;
    char wrap_output[STRING_LENGTH_WRAPPED];
    int i;

    for (i = 0; i < HISTORY; i++) {
        if (flag[i])
            FUNC6(wrap_output, lines[i], x);
        else
            FUNC5(wrap_output, lines[i], x);

        int L = FUNC1(wrap_output);
        count = count + L;

        if (count < y) {
            FUNC2(y - 1 - count, 0);
            FUNC3("%s", wrap_output);
            FUNC0();
        }
    }

    FUNC2(y - 1, 0);
    FUNC0();
    FUNC3(">> ");
    FUNC3("%s", input_line);
    FUNC0();
    FUNC4();
}
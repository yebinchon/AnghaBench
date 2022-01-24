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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 

char FUNC5(const char *valid, const char *prompt)
{
#ifndef __REACTOS__
    int ch, okay;

    while (1) {
	if (prompt)
	    FUNC3("%s ", prompt);
	FUNC1(stdout);
	while (ch = FUNC2(), ch == ' ' || ch == '\t') ;
	if (ch == EOF)
	    FUNC0(1);
	if (!FUNC4(valid, okay = ch))
	    okay = 0;
	while (ch = FUNC2(), ch != '\n' && ch != EOF) ;
	if (ch == EOF)
	    FUNC0(1);
	if (okay)
	    return okay;
	FUNC3("Invalid input.\n");
    }
#else
    return 0;
#endif
}
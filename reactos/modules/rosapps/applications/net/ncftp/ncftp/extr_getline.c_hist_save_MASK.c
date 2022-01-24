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
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static char *
FUNC6(char *p)

/* makes a copy of the string */
{
    char *s = 0;
    size_t len = FUNC3(p);
    char *nl = FUNC5(p, "\n\r");

    if (nl) {
        if ((s = (char *) FUNC1(len)) != 0) {
            FUNC4(s, p, len-1);
	    s[len-1] = 0;
	}
    } else {
        if ((s = (char *) FUNC1(len+1)) != 0) {
            FUNC2(s, p);
        }
    }
    if (s == 0)
	FUNC0("\n*** Error: hist_save() failed on malloc\n");
    return s;
}
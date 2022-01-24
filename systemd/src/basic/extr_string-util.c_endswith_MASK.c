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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

char* FUNC3(const char *s, const char *postfix) {
        size_t sl, pl;

        FUNC0(s);
        FUNC0(postfix);

        sl = FUNC2(s);
        pl = FUNC2(postfix);

        if (pl == 0)
                return (char*) s + sl;

        if (sl < pl)
                return NULL;

        if (FUNC1(s + sl - pl, postfix, pl) != 0)
                return NULL;

        return (char*) s + sl - pl;
}
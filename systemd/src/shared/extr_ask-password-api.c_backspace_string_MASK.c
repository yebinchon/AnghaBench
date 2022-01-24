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
 int FUNC1 (int,size_t) ; 
 size_t FUNC2 (char const*) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(int ttyfd, const char *str) {
        FUNC0(str);

        /* Backspaces through enough characters to entirely undo printing of the specified string. */

        if (ttyfd < 0)
                return 0;

        size_t m = FUNC3(str);
        if (m == (size_t) -1)
                m = FUNC2(str); /* Not a valid UTF-8 string? If so, let's backspace the number of bytes
                                  * output. Most likely this happened because we are not in an UTF-8 locale,
                                  * and in that case that is the correct thing to do. And even if it's not,
                                  * terminals tend to stop backspacing at the leftmost column, hence
                                  * backspacing too much should be mostly OK. */

        return FUNC1(ttyfd, m);
}
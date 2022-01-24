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
typedef  int /*<<< orphan*/  s ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 size_t FUNC2 (char*,char const* const*,char,int) ; 

__attribute__((used)) static void FUNC3(void) {
    const char *const tokens[] = { "abc", "de", "fghi", NULL };
    char s[] = "xxxxxxxxxxx";
    size_t w = FUNC2(s, tokens, ' ', sizeof(s));

    // returns strlen of concatenation
    FUNC0(w == 11);

    // is nul-terminated
    FUNC0(s[11] == '\0');

    // copies the content as expected
    FUNC0(!FUNC1("abc de fghi", s));
}
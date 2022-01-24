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
 int SHOW_MASKED ; 
 int /*<<< orphan*/  SPECIAL_GLYPH_ARROW ; 
 char* FUNC0 () ; 
 char* FUNC1 () ; 
 int arg_flags ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*,char const*,char*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *top, const char *bottom) {
        if (!(arg_flags & SHOW_MASKED))
                return 0;

        FUNC2("%s%s%s     %s %s %s\n",
               FUNC0(), "[MASKED]", FUNC1(),
               top, FUNC3(SPECIAL_GLYPH_ARROW), bottom);
        return 1;
}
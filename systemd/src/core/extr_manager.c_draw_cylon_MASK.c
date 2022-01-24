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
 int /*<<< orphan*/  ANSI_HIGHLIGHT_RED ; 
 int /*<<< orphan*/  ANSI_NORMAL ; 
 int /*<<< orphan*/  ANSI_RED ; 
 unsigned int CYLON_BUFFER_EXTRA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 char* FUNC2 (char*,char,unsigned int) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(char buffer[], size_t buflen, unsigned width, unsigned pos) {
        char *p = buffer;

        FUNC0(buflen >= CYLON_BUFFER_EXTRA + width + 1);
        FUNC0(pos <= width+1); /* 0 or width+1 mean that the center light is behind the corner */

        if (pos > 1) {
                if (pos > 2)
                        p = FUNC2(p, ' ', pos-2);
                if (FUNC1())
                        p = FUNC3(p, ANSI_RED);
                *p++ = '*';
        }

        if (pos > 0 && pos <= width) {
                if (FUNC1())
                        p = FUNC3(p, ANSI_HIGHLIGHT_RED);
                *p++ = '*';
        }

        if (FUNC1())
                p = FUNC3(p, ANSI_NORMAL);

        if (pos < width) {
                if (FUNC1())
                        p = FUNC3(p, ANSI_RED);
                *p++ = '*';
                if (pos < width-1)
                        p = FUNC2(p, ' ', width-1-pos);
                if (FUNC1())
                        FUNC4(p, ANSI_NORMAL);
        }
}
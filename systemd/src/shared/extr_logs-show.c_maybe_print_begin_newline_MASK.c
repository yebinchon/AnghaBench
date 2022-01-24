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
typedef  int OutputFlags ;
typedef  int FILE ;

/* Variables and functions */
 int OUTPUT_BEGIN_NEWLINE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char,int*) ; 

__attribute__((used)) static int FUNC2(FILE *f, OutputFlags *flags) {
        FUNC0(f);
        FUNC0(flags);

        if (!(*flags & OUTPUT_BEGIN_NEWLINE))
                return 0;

        /* Print a beginning new line if that's request, but only once
         * on the first line we print. */

        FUNC1('\n', f);
        *flags &= ~OUTPUT_BEGIN_NEWLINE;
        return 0;
}
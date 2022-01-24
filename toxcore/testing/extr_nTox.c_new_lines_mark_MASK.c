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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int HISTORY ; 
 scalar_t__ STRING_LENGTH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * flag ; 
 char** lines ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 

void FUNC2(char *line, uint8_t special)
{
    int i = 0;

    for (i = HISTORY - 1; i > 0; i--) {
        FUNC1(lines[i], lines[i - 1], STRING_LENGTH - 1);
        flag[i] = flag[i - 1];
    }

    FUNC1(lines[0], line, STRING_LENGTH - 1);
    flag[i] = special;

    FUNC0();
}
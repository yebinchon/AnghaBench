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
 int DISPLAY_COLUMNS ; 
 int LINE_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*) ; 
 size_t FUNC4 (char const*) ; 

void FUNC5(const char *szLine)
{
    int spaceIndex = 0;
    char output[LINE_BUFFER_SIZE];

    FUNC1(output, 0, DISPLAY_COLUMNS + 2);

    /*If this line is longer than DISPLAY_COLUMNS,
    * break it at the first space.
    */
    if (DISPLAY_COLUMNS - 2 < FUNC4(szLine))
    {
        for (spaceIndex = DISPLAY_COLUMNS / 2; spaceIndex < DISPLAY_COLUMNS - 2; spaceIndex++)
        {
            if (' ' == szLine[spaceIndex])
            {
                break;
            }
        }

        FUNC0(output + 2, szLine, spaceIndex + 1);
        output[0] = '|';
        output[1] = ' ';
        output[FUNC4(output)] = '\n';
        FUNC2(output);

        FUNC5(szLine + spaceIndex + 1);
    }
    else
    {
        FUNC3(output,"| %s\n", szLine);
        FUNC2(output);
    }

}
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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static size_t FUNC3(FILE* inFile, FILE* outCFile, char nullTerminate)
{
    size_t bufLen = 0;
    unsigned char ch;

    FUNC2(outCFile, "\n{");
    do
    {
        /* Read the next byte */
        ch = FUNC1(inFile);

        if (FUNC0(inFile) && nullTerminate)
            ch = 0x00;

        if (!FUNC0(inFile) || nullTerminate)
        {
            /* Start a new line if needed */
            if ((bufLen % 16) == 0)
                FUNC2(outCFile, "\n   ");

            /* Write the byte or the optional NULL terminator */
            FUNC2(outCFile, " 0x%02x,", (unsigned int)ch);

            ++bufLen;
        }
    } while (!FUNC0(inFile));
    FUNC2(outCFile, "\n}");

    return bufLen;
}
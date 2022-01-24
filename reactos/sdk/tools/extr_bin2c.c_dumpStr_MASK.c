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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static size_t FUNC3(FILE* inFile, FILE* outCFile)
{
    size_t bufLen = 0;
    unsigned char ch;

    /* Always start the first line */
    FUNC2(outCFile, "\n    \"");
    do
    {
        /* Read the next byte */
        ch = FUNC1(inFile);

        /* If a byte is available... */
        if (!FUNC0(inFile))
        {
            /* ... do we need to start a new line? */
            if ((bufLen != 0) && (bufLen % 16) == 0)
            {
                /* Yes, end the current line and start a new one */
                FUNC2(outCFile, "\"");
                FUNC2(outCFile, "\n    \"");
            }

            /* Now write the byte */
            FUNC2(outCFile, "\\x%02x", (unsigned int)ch);
        }
        /* ... otherwise, end the current line... */
        else
        {
            FUNC2(outCFile, "\"");
            /* We break just after */
        }

        ++bufLen; // This takes also the final NULL terminator into account.

    } while (!FUNC0(inFile));

    return bufLen;
}
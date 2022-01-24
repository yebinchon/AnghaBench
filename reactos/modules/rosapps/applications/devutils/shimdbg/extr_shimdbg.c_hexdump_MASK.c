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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(unsigned char *p, unsigned int len)
{
    unsigned char *line = p;
    unsigned int i, thisline, offset = 0;

    while (offset < len)
    {
        FUNC0("%04x ", offset);
        thisline = len - offset;
        if (thisline > 16)
            thisline = 16;

        for (i = 0; i < thisline; i++)
            FUNC0("%02x ", line[i]);

        for (; i < 16; i++)
            FUNC0("   ");

        for (i = 0; i < thisline; i++)
            FUNC0("%c", (line[i] >= 0x20 && line[i] < 0x7f) ? line[i] : '.');

        FUNC0("\n");
        offset += thisline;
        line += thisline;
    }
}
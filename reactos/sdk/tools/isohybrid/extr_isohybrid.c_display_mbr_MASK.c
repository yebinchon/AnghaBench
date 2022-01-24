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
typedef  char uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(const uint8_t *mbr, size_t len)
{
    unsigned char c = 0;
    unsigned int i = 0, j = 0;

    FUNC1("sizeof(MBR): %zu bytes\n", len);
    for (i = 0; i < len; i++)
    {
        if (!(i % 16))
            FUNC1("%04d ", i);

        if (!(i % 8))
            FUNC1(" ");

        c = mbr[i];
        FUNC1("%02x ", c);

        if (!((i + 1) % 16))
        {
            FUNC1(" |");
            for (; j <= i; j++)
                FUNC1("%c", FUNC0(mbr[j]) ? mbr[j] : '.');
            FUNC1("|\n");
        }
    }
}
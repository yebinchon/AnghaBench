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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(uint16_t *glyph_table, uint16_t uni_default_char)
{
    uint32_t ch;

    FUNC0("GLYPHTABLE:\n");

    for (ch = 0; ch <= 0xFF; ch++)
    {
        if (glyph_table[ch] != uni_default_char)
        {
            FUNC0("0x%02X 0x%04X\n", (unsigned int)ch, (unsigned int)glyph_table[ch]);
        }
    }

    FUNC0("\n");
}
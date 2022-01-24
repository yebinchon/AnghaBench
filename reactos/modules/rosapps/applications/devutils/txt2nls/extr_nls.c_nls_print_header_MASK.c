#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_3__ {int CodePage; int MaximumCharacterSize; int DefaultChar; int UniDefaultChar; int TransUniDefaultChar; int* LeadByte; } ;
typedef  TYPE_1__ NLS_FILE_HEADER ;

/* Variables and functions */
 size_t MAXIMUM_LEADBYTES ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(NLS_FILE_HEADER *header)
{
    uint32_t i;

    FUNC0("HEADER:\n");
    FUNC0("CodePage: %u\n", header->CodePage);
    FUNC0("Character size: %u\n", header->MaximumCharacterSize);
    FUNC0("Default char: 0x%02X\n", header->DefaultChar);
    FUNC0("Default unicode char: 0x%04X\n", header->UniDefaultChar);
    FUNC0("Trans default char: 0x%02X\n", header->TransUniDefaultChar);
    FUNC0("Trans default unicode char: 0x%04X\n", header->TransUniDefaultChar);

    for (i = 0; i < MAXIMUM_LEADBYTES; i++)
    {
        FUNC0("LeadByte[%u] = 0x%02X\n", i, header->LeadByte[i]);
    }

    FUNC0("\n");
}
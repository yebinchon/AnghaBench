#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  offset_errors; } ;
struct TYPE_4__ {int PointerToRawData; } ;
typedef  TYPE_1__* PIMAGE_SECTION_HEADER ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int) ; 
 int FUNC2 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 TYPE_2__ summ ; 

__attribute__((used)) static int
FUNC5(const void *FileData, size_t offset, char *toString)
{
    int res;

    PIMAGE_SECTION_HEADER PERosSymSectionHeader = FUNC0((char *)FileData);
    if (!PERosSymSectionHeader)
        return 2;

    res = FUNC2((char *)FileData + PERosSymSectionHeader->PointerToRawData, offset, toString);
    if (res)
    {
        if (toString)
            FUNC4(toString, "??:0");
        else
            FUNC3("??:0");
        FUNC1(1, "Offset not found: %x\n", (unsigned int)offset);
        summ.offset_errors++;
    }

    return res;
}
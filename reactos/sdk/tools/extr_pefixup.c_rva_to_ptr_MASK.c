#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  NumberOfSections; } ;
struct TYPE_10__ {TYPE_2__ FileHeader; } ;
struct TYPE_7__ {int /*<<< orphan*/  VirtualSize; } ;
struct TYPE_9__ {int /*<<< orphan*/  PointerToRawData; int /*<<< orphan*/  VirtualAddress; TYPE_1__ Misc; } ;
typedef  TYPE_3__* PIMAGE_SECTION_HEADER ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_4__*) ; 
 scalar_t__ buffer ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* nt_header ; 

void *FUNC2(DWORD rva)
{
   PIMAGE_SECTION_HEADER section_header;
   unsigned int i;

   for (i = 0, section_header = FUNC0(nt_header);
        i < FUNC1(nt_header->FileHeader.NumberOfSections);
        i++, section_header++)
   {
      if (rva >= FUNC1(section_header->VirtualAddress) &&
          rva < FUNC1(section_header->VirtualAddress) +
                FUNC1(section_header->Misc.VirtualSize))
      {
         return buffer + rva - FUNC1(section_header->VirtualAddress) +
                FUNC1(section_header->PointerToRawData);
      }
   }

   return NULL;
}
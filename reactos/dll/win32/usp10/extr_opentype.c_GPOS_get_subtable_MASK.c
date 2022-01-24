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
struct TYPE_5__ {int /*<<< orphan*/  PosFormat; int /*<<< orphan*/  ExtensionOffset; } ;
struct TYPE_4__ {int /*<<< orphan*/  LookupType; int /*<<< orphan*/ * SubTable; } ;
typedef  TYPE_1__ OT_LookupTable ;
typedef  TYPE_2__ GPOS_ExtensionPosFormat1 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int GPOS_LOOKUP_POSITION_EXTENSION ; 

__attribute__((used)) static const BYTE *FUNC3(const OT_LookupTable *look, int index)
{
    int offset = FUNC2(look->SubTable[index]);

    if (FUNC2(look->LookupType) == GPOS_LOOKUP_POSITION_EXTENSION)
    {
        const GPOS_ExtensionPosFormat1 *ext = (const GPOS_ExtensionPosFormat1 *)((const BYTE *)look + offset);
        if (FUNC2(ext->PosFormat) == 1)
        {
            offset += FUNC1(ext->ExtensionOffset);
        }
        else
        {
            FUNC0("Unhandled Extension Positioning Format %i\n",FUNC2(ext->PosFormat));
        }
    }
    return (const BYTE *)look + offset;
}
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
typedef  int WORD ;
struct TYPE_3__ {int* DeltaValue; int /*<<< orphan*/  StartSize; int /*<<< orphan*/  DeltaFormat; int /*<<< orphan*/  EndSize; } ;
typedef  TYPE_1__ OT_DeviceTable ;
typedef  int INT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static INT FUNC3(const OT_DeviceTable *DeviceTable, WORD ppem)
{
    static const WORD mask[3] = {3,0xf,0xff};
    if (DeviceTable && ppem >= FUNC0(DeviceTable->StartSize) && ppem  <= FUNC0(DeviceTable->EndSize))
    {
        WORD format = FUNC0(DeviceTable->DeltaFormat);
        int index = ppem - FUNC0(DeviceTable->StartSize);
        int value;

        FUNC1("device table, format %#x, index %i\n", format, index);

        if (format < 1 || format > 3)
        {
            FUNC2("invalid delta format %#x\n", format);
            return 0;
        }

        index = index << format;
        value = (DeviceTable->DeltaValue[index/sizeof(WORD)] << (index%sizeof(WORD)))&mask[format-1];
        FUNC1("offset %i, value %i\n",index, value);
        if (value > mask[format-1]/2)
            value = -1 * ((mask[format-1]+1) - value);
        return value;
    }
    return 0;
}
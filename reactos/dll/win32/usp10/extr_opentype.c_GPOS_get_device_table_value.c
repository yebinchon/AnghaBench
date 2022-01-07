
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int* DeltaValue; int StartSize; int DeltaFormat; int EndSize; } ;
typedef TYPE_1__ OT_DeviceTable ;
typedef int INT ;


 int GET_BE_WORD (int ) ;
 int TRACE (char*,int,int) ;
 int WARN (char*,int) ;

__attribute__((used)) static INT GPOS_get_device_table_value(const OT_DeviceTable *DeviceTable, WORD ppem)
{
    static const WORD mask[3] = {3,0xf,0xff};
    if (DeviceTable && ppem >= GET_BE_WORD(DeviceTable->StartSize) && ppem <= GET_BE_WORD(DeviceTable->EndSize))
    {
        WORD format = GET_BE_WORD(DeviceTable->DeltaFormat);
        int index = ppem - GET_BE_WORD(DeviceTable->StartSize);
        int value;

        TRACE("device table, format %#x, index %i\n", format, index);

        if (format < 1 || format > 3)
        {
            WARN("invalid delta format %#x\n", format);
            return 0;
        }

        index = index << format;
        value = (DeviceTable->DeltaValue[index/sizeof(WORD)] << (index%sizeof(WORD)))&mask[format-1];
        TRACE("offset %i, value %i\n",index, value);
        if (value > mask[format-1]/2)
            value = -1 * ((mask[format-1]+1) - value);
        return value;
    }
    return 0;
}

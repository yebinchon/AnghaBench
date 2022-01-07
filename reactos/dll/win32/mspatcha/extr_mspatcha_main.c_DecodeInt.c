
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSAFE_READ ;
typedef int INT ;
typedef int DWORD ;


 scalar_t__ ReadByte (int ) ;

INT DecodeInt(PSAFE_READ pRead)
{
    INT Result = 0, offset;

    for (offset = 0; offset < 32; offset += 6)
    {
        INT val = (INT)(DWORD)ReadByte(pRead);
        Result |= ((val & 0x3f) << offset);
        if (val & 0x80)
        {
            if (val & 0x40)
                Result *= -1;
            break;
        }
    }

    return Result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PSAFE_READ ;
typedef int DWORD ;


 int ReadByte (int ) ;

DWORD DecodeDWord(PSAFE_READ pRead)
{
    UINT Result = 0, offset;

    for (offset = 0; offset < 32; offset += 7)
    {
        DWORD val = ReadByte(pRead);
        Result |= ((val & 0x7f) << offset);
        if (val & 0x80)
            break;
    }

    return Result;
}

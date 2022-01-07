
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;



UINT8
AcpiUtAsciiCharToHex (
    int HexChar)
{



    if (HexChar <= '9')
    {
        return ((UINT8) (HexChar - '0'));
    }



    if (HexChar <= 'F')
    {
        return ((UINT8) (HexChar - 0x37));
    }



    return ((UINT8) (HexChar - 0x57));
}

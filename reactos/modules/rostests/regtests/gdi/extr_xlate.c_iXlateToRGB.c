
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int COLORREF ;
 int GetBValue (int) ;
 int GetGValue (int) ;
 int GetRValue (int) ;
 int RGB (int,int,int) ;

__attribute__((used)) static
COLORREF
iXlateToRGB(ULONG iFormat, ULONG ulColor)
{
    ULONG ulRed, ulGreen, ulBlue;

    switch (iFormat)
    {
        case 134:
            return ulColor ? 0xffffff : 0;

        case 129:
        case 128:
        case 136:
            ulRed = (ulColor & 0x7C00) >> 7;
            ulRed |= ulRed >> 5;
            ulGreen = (ulColor & 0x3E0) >> 2;
            ulGreen |= ulGreen >> 5;
            ulBlue = (ulColor & 0x1F) << 3;
            ulBlue |= ulBlue >> 5;
            return RGB(ulRed, ulGreen, ulBlue);

        case 135:
            ulRed = (ulColor & 0xF800) >> 8;
            ulRed |= ulRed >> 5;
            ulGreen = (ulColor & 0x7E0) >> 3;
            ulGreen |= ulGreen >> 6;
            ulBlue = (ulColor & 0x1F) << 3;
            ulBlue |= ulBlue >> 5;
            return RGB(ulRed, ulGreen, ulBlue);

        case 132:
        case 130:
            return ulColor;

        case 133:
        case 131:
            ulRed = GetRValue(ulColor);
            ulGreen = GetGValue(ulColor);
            ulBlue = GetBValue(ulColor);
            return RGB(ulBlue, ulGreen, ulRed);
    }
    return 0;
}

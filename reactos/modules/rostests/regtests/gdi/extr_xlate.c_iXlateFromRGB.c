
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
ULONG
iXlateFromRGB(ULONG iFormat, COLORREF crColor)
{
    ULONG ulRed, ulGreen, ulBlue;

    ulRed = GetRValue(crColor);
    ulGreen = GetGValue(crColor);
    ulBlue = GetBValue(crColor);

    switch (iFormat)
    {
        case 134:
            return crColor ? 0xffffff : 0;

        case 129:
        case 128:
        case 136:
            ulRed = (ulRed & 0xF8) >> 3;
            ulGreen = (ulGreen & 0xF8) >> 3;
            ulBlue = (ulBlue & 0xF8) >> 3;
            return ulRed << 10 | ulGreen << 5 | ulBlue;

        case 135:
            ulRed = (ulRed & 0xF8) >> 3;
            ulGreen = (ulGreen & 0xFC) >> 2;
            ulBlue = (ulBlue & 0xF8) >> 3;
            return ulRed << 11 | ulGreen << 5 | ulBlue;

        case 132:
        case 130:
            return crColor;

        case 133:
        case 131:
            return RGB(ulBlue, ulGreen, ulRed);
    }
    return 0;
}

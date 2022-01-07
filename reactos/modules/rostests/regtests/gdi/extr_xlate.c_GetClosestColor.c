
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ COLORREF ;


 scalar_t__ BMF_1BPP ;
 int iXlateFromRGB (scalar_t__,scalar_t__) ;
 scalar_t__ iXlateToRGB (scalar_t__,int ) ;

__attribute__((used)) static
ULONG
GetClosestColor(ULONG iFormat, COLORREF crColor, COLORREF crBackColor)
{
    if (iFormat == BMF_1BPP)
        return crBackColor;
    return iXlateToRGB(iFormat, iXlateFromRGB(iFormat, crColor));
}

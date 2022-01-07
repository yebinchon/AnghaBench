
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPALETTE ;


 scalar_t__ GdiConvertPalette (scalar_t__) ;
 int ok (int,char*) ;

void Test_GdiConvertPalette()
{
    ok(GdiConvertPalette((HPALETTE)-1) == (HPALETTE)-1, "\n");
    ok(GdiConvertPalette((HPALETTE)0) == (HPALETTE)0, "\n");
    ok(GdiConvertPalette((HPALETTE)1) == (HPALETTE)1, "\n");
    ok(GdiConvertPalette((HPALETTE)2) == (HPALETTE)2, "\n");
}

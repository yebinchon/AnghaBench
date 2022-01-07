
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HDC ;


 scalar_t__ GdiConvertDC (scalar_t__) ;
 int ok (int,char*) ;

void Test_GdiConvertDC()
{
    ok(GdiConvertDC((HDC)-1) == (HDC)-1, "\n");
    ok(GdiConvertDC((HDC)0) == (HDC)0, "\n");
    ok(GdiConvertDC((HDC)1) == (HDC)1, "\n");
    ok(GdiConvertDC((HDC)2) == (HDC)2, "\n");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HDC ;


 scalar_t__ GdiGetLocalDC (scalar_t__) ;
 int ok (int,char*) ;

void Test_GdiGetLocalDC()
{
    ok(GdiGetLocalDC((HDC)-1) == (HDC)-1, "\n");
    ok(GdiGetLocalDC((HDC)0) == (HDC)0, "\n");
    ok(GdiGetLocalDC((HDC)1) == (HDC)1, "\n");
    ok(GdiGetLocalDC((HDC)2) == (HDC)2, "\n");
}

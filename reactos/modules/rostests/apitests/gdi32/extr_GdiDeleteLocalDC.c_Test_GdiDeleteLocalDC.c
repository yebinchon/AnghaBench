
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;


 scalar_t__ GdiDeleteLocalDC (int ) ;
 scalar_t__ TRUE ;
 int ok (int,char*) ;

void Test_GdiDeleteLocalDC()
{
    ok(GdiDeleteLocalDC((HDC)-1) == TRUE, "\n");
    ok(GdiDeleteLocalDC((HDC)0) == TRUE, "\n");
    ok(GdiDeleteLocalDC((HDC)1) == TRUE, "\n");
    ok(GdiDeleteLocalDC((HDC)2) == TRUE, "\n");
}

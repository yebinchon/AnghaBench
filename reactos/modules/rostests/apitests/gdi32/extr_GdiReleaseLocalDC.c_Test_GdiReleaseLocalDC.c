
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;


 scalar_t__ GdiReleaseLocalDC (int ) ;
 scalar_t__ TRUE ;
 int ok (int,char*) ;

void Test_GdiReleaseLocalDC()
{
    ok(GdiReleaseLocalDC((HDC)-1) == TRUE, "\n");
    ok(GdiReleaseLocalDC((HDC)0) == TRUE, "\n");
    ok(GdiReleaseLocalDC((HDC)1) == TRUE, "\n");
    ok(GdiReleaseLocalDC((HDC)2) == TRUE, "\n");
}

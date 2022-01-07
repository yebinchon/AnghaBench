
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRGN ;


 scalar_t__ GdiConvertRegion (scalar_t__) ;
 int ok (int,char*) ;

void Test_GdiConvertRegion()
{
    ok(GdiConvertRegion((HRGN)-1) == (HRGN)-1, "\n");
    ok(GdiConvertRegion((HRGN)0) == (HRGN)0, "\n");
    ok(GdiConvertRegion((HRGN)1) == (HRGN)1, "\n");
    ok(GdiConvertRegion((HRGN)2) == (HRGN)2, "\n");
}

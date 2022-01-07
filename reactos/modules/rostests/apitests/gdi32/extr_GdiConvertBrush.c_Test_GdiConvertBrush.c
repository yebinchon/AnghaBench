
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HBRUSH ;


 scalar_t__ GdiConvertBrush (scalar_t__) ;
 int ok (int,char*) ;

void Test_GdiConvertBrush()
{
    ok(GdiConvertBrush((HBRUSH)-1) == (HBRUSH)-1, "\n");
    ok(GdiConvertBrush((HBRUSH)0) == (HBRUSH)0, "\n");
    ok(GdiConvertBrush((HBRUSH)1) == (HBRUSH)1, "\n");
    ok(GdiConvertBrush((HBRUSH)2) == (HBRUSH)2, "\n");
}

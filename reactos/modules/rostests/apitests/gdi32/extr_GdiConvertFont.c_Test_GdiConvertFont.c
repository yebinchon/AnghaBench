
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HFONT ;


 scalar_t__ GdiConvertFont (scalar_t__) ;
 int ok (int,char*) ;

void Test_GdiConvertFont()
{
    ok(GdiConvertFont((HFONT)-1) == (HFONT)-1, "\n");
    ok(GdiConvertFont((HFONT)0) == (HFONT)0, "\n");
    ok(GdiConvertFont((HFONT)1) == (HFONT)1, "\n");
    ok(GdiConvertFont((HFONT)2) == (HFONT)2, "\n");
}

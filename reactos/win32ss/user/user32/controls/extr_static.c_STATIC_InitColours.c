
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int COLOR_3DDKSHADOW ;
 int COLOR_3DHIGHLIGHT ;
 int COLOR_3DSHADOW ;
 void* GetSysColor (int ) ;
 void* color_3ddkshadow ;
 void* color_3dhighlight ;
 void* color_3dshadow ;

__attribute__((used)) static VOID STATIC_InitColours(void)
{
    color_3ddkshadow = GetSysColor(COLOR_3DDKSHADOW);
    color_3dshadow = GetSysColor(COLOR_3DSHADOW);
    color_3dhighlight = GetSysColor(COLOR_3DHIGHLIGHT);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDirectDraw7_Release (int ) ;
 int IDirectDrawSurface7_Release (int ) ;
 int pdd7 ;
 int pdds7 ;

__attribute__((used)) static void release_directdraw(void)
{
    IDirectDrawSurface7_Release(pdds7);
    IDirectDraw7_Release(pdd7);
}

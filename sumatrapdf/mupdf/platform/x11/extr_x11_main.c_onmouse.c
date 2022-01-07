
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ advance_scheduled ;
 int gapp ;
 scalar_t__ justcopied ;
 int pdfapp_onmouse (int *,int,int,int,int,int) ;
 int winrepaint (int *) ;

__attribute__((used)) static void onmouse(int x, int y, int btn, int modifiers, int state)
{
 if (state != 0)
  advance_scheduled = 0;

 if (state != 0 && justcopied)
 {
  justcopied = 0;
  winrepaint(&gapp);
 }

 pdfapp_onmouse(&gapp, x, y, btn, modifiers, state);
}

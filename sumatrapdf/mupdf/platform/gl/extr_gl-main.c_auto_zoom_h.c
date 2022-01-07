
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h; } ;


 int MAXRES ;
 int MINRES ;
 int canvas_h ;
 int currentzoom ;
 int fz_clamp (int,int ,int ) ;
 TYPE_1__ page_tex ;

__attribute__((used)) static void auto_zoom_h(void)
{
 currentzoom = fz_clamp(currentzoom * canvas_h / page_tex.h, MINRES, MAXRES);
}

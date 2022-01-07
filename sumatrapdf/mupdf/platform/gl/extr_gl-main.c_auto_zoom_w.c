
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; } ;


 int MAXRES ;
 int MINRES ;
 int canvas_w ;
 int currentzoom ;
 int fz_clamp (int,int ,int ) ;
 TYPE_1__ page_tex ;

__attribute__((used)) static void auto_zoom_w(void)
{
 currentzoom = fz_clamp(currentzoom * canvas_w / page_tex.w, MINRES, MAXRES);
}

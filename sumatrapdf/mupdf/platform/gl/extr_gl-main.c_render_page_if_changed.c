
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ chapter; scalar_t__ page; } ;


 scalar_t__ currentaa ;
 scalar_t__ currenticc ;
 scalar_t__ currentinvert ;
 TYPE_1__ currentpage ;
 scalar_t__ currentrotate ;
 scalar_t__ currentseparations ;
 scalar_t__ currenttint ;
 scalar_t__ currentzoom ;
 scalar_t__ oldaa ;
 scalar_t__ oldicc ;
 scalar_t__ oldinvert ;
 TYPE_1__ oldpage ;
 scalar_t__ oldrotate ;
 scalar_t__ oldseparations ;
 scalar_t__ oldtint ;
 scalar_t__ oldzoom ;
 int render_page () ;

void render_page_if_changed(void)
{
 if (oldpage.chapter != currentpage.chapter ||
  oldpage.page != currentpage.page ||
  oldzoom != currentzoom ||
  oldrotate != currentrotate ||
  oldinvert != currentinvert ||
  oldtint != currenttint ||
  oldicc != currenticc ||
  oldseparations != currentseparations ||
  oldaa != currentaa)
 {
  render_page();
  oldpage = currentpage;
  oldzoom = currentzoom;
  oldrotate = currentrotate;
  oldinvert = currentinvert;
  oldtint = currenttint;
  oldicc = currenticc;
  oldseparations = currentseparations;
  oldaa = currentaa;
 }
}

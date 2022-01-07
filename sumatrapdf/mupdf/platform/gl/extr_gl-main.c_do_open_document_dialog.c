
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dialog; } ;


 scalar_t__ doc ;
 scalar_t__* filename ;
 int glutLeaveMainLoop () ;
 int load_document () ;
 int load_page () ;
 int render_page () ;
 int shrinkwrap () ;
 TYPE_1__ ui ;
 scalar_t__ ui_open_file (scalar_t__*) ;
 int update_title () ;

__attribute__((used)) static void do_open_document_dialog(void)
{
 if (ui_open_file(filename))
 {
  ui.dialog = ((void*)0);
  if (filename[0] == 0)
   glutLeaveMainLoop();
  else
   load_document();
  if (doc)
  {
   load_page();
   render_page();
   shrinkwrap();
   update_title();
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ doc ;
 int load_document () ;
 int load_page () ;
 int render_page () ;
 int save_accelerator () ;
 int save_history () ;
 int update_title () ;

void reload(void)
{
 save_history();
 save_accelerator();
 load_document();
 if (doc)
 {
  load_page();
  render_page();
  update_title();
 }
}

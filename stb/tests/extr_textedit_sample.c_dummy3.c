
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb_textedit_click (int ,int ,int ,int ) ;
 int stb_textedit_cut (int ,int ) ;
 int stb_textedit_drag (int ,int ,int ,int ) ;
 int stb_textedit_initialize_state (int ,int ) ;
 int stb_textedit_key (int ,int ,int ) ;
 int stb_textedit_paste (int ,int ,int ,int ) ;

void dummy3(void)
{
  stb_textedit_click(0,0,0,0);
  stb_textedit_drag(0,0,0,0);
  stb_textedit_cut(0,0);
  stb_textedit_key(0,0,0);
  stb_textedit_initialize_state(0,0);
  stb_textedit_paste(0,0,0,0);
}

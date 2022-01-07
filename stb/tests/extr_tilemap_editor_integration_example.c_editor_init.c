
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O__num_types ;
 int O_lockeddoor ;
 int O_platform ;
 int O_player ;
 int O_robot ;
 int O_vplatform ;
 int T__num_types ;
 int T_doorframe ;
 int T_empty ;
 int T_entry ;
 int T_reserved1 ;
 int edit_map ;
 int stbte_create_map (int,int,int,int,int,int) ;
 int stbte_define_tile (int ,int,int,char*) ;
 int stbte_set_background_tile (int ,int ) ;

void editor_init(void)
{
   int i;
   edit_map = stbte_create_map(20,14, 8, 16,16, 100);

   stbte_set_background_tile(edit_map, T_empty);

   for (i=0; i < T__num_types; ++i) {
      if (i != T_reserved1 && i != T_entry && i != T_doorframe)
         stbte_define_tile(edit_map, 0+i, 1, "Background");
   }
   stbte_define_tile(edit_map, 256+O_player , 8, "Char");
   stbte_define_tile(edit_map, 256+O_robot , 8, "Char");
   for (i=O_lockeddoor; i < O__num_types-2; ++i)
      if (i == O_platform || i == O_vplatform)
         stbte_define_tile(edit_map, 256+i, 4, "Object");
      else
         stbte_define_tile(edit_map, 256+i, 2, "Object");





}

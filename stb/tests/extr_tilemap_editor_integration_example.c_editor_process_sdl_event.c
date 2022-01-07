
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mod; int scancode; int sym; } ;
struct TYPE_7__ {TYPE_1__ keysym; } ;
struct TYPE_8__ {int type; TYPE_2__ key; } ;
typedef TYPE_3__ SDL_Event ;


 int KMOD_CTRL ;
 int STBTE_act_copy ;
 int STBTE_act_cut ;
 int STBTE_act_paste ;
 int STBTE_act_redo ;
 int STBTE_act_toggle_grid ;
 int STBTE_act_undo ;
 int STBTE_scroll_down ;
 int STBTE_scroll_left ;
 int STBTE_scroll_right ;
 int STBTE_scroll_up ;
 int STBTE_tool_brush ;
 int STBTE_tool_erase ;
 int STBTE_tool_eyedropper ;
 int STBTE_tool_link ;
 int STBTE_tool_rectangle ;
 int STBTE_tool_select ;
 int edit_map ;
 int editor_key (int ) ;
 float editor_scale ;
 int in_editor ;
 int stbte_mouse_sdl (int ,TYPE_3__*,float,float,int ,int ) ;

void editor_process_sdl_event(SDL_Event *e)
{
   switch (e->type) {
      case 141:
      case 143:
      case 142:
      case 140:
         stbte_mouse_sdl(edit_map, e, 1.0f/editor_scale,1.0f/editor_scale,0,0);
         break;

      case 144:
         if (in_editor) {
            switch (e->key.keysym.sym) {
               case 146: editor_key(STBTE_scroll_right); break;
               case 147 : editor_key(STBTE_scroll_left ); break;
               case 145 : editor_key(STBTE_scroll_up ); break;
               case 148 : editor_key(STBTE_scroll_down ); break;
            }
            switch (e->key.keysym.scancode) {
               case 132: editor_key(STBTE_tool_select); break;
               case 139: editor_key(STBTE_tool_brush ); break;
               case 137: editor_key(STBTE_tool_erase ); break;
               case 133: editor_key(STBTE_tool_rectangle ); break;
               case 135: editor_key(STBTE_tool_eyedropper); break;
               case 134: editor_key(STBTE_tool_link); break;
               case 136: editor_key(STBTE_act_toggle_grid); break;
            }
            if ((e->key.keysym.mod & KMOD_CTRL) && !(e->key.keysym.mod & ~KMOD_CTRL)) {
               switch (e->key.keysym.scancode) {
                  case 130: editor_key(STBTE_act_cut ); break;
                  case 138: editor_key(STBTE_act_copy ); break;
                  case 131: editor_key(STBTE_act_paste); break;
                  case 128: editor_key(STBTE_act_undo ); break;
                  case 129: editor_key(STBTE_act_redo ); break;
               }
            }
         }
         break;
   }
}

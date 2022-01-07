
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int sym; int scancode; int mod; } ;
struct TYPE_9__ {TYPE_2__ keysym; } ;
struct TYPE_7__ {int data2; int data1; int event; } ;
struct TYPE_10__ {int type; TYPE_3__ key; TYPE_1__ window; } ;
typedef int SDL_Keymod ;
typedef TYPE_4__ SDL_Event ;


 int GAME_editor ;
 int KMOD_CTRL ;

 int SDLK_ESCAPE ;


 int SDLK_SPACE ;

 int SDL_GetModState () ;






 int SDL_SCANCODE_A ;


 int SDL_SCANCODE_D ;




 int SDL_SCANCODE_LCTRL ;



 int SDL_SCANCODE_W ;





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
 int active_control_clear (int) ;
 int active_control_set (int) ;
 int editor_key (int ) ;
 int game_mode ;
 int global_hack ;
 int loopmode (int ,int,int ) ;
 int process_sdl_mouse (TYPE_4__*) ;
 int quit ;
 int screen_x ;
 int screen_y ;

void process_event(SDL_Event *e)
{
   switch (e->type) {
      case 143:
         process_sdl_mouse(e);
         break;
      case 145:
      case 144:
         break;

      case 142:
         quit = 1;
         break;

      case 129:
         switch (e->window.event) {
            case 128:
               screen_x = e->window.data1;
               screen_y = e->window.data2;
               loopmode(0,1,0);
               break;
         }
         break;

      case 147: {
         int k = e->key.keysym.sym;
         int s = e->key.keysym.scancode;
         SDL_Keymod mod;
         mod = SDL_GetModState();
         if (k == SDLK_ESCAPE)
            quit = 1;

         if (s == SDL_SCANCODE_D) active_control_set(0);
         if (s == SDL_SCANCODE_A) active_control_set(1);
         if (s == SDL_SCANCODE_W) active_control_set(2);
         if (s == 134) active_control_set(3);
         if (k == SDLK_SPACE) active_control_set(4);
         if (s == SDL_SCANCODE_LCTRL) active_control_set(5);
         if (s == 134) active_control_set(6);
         if (s == SDL_SCANCODE_D) active_control_set(7);
         if (k == '1') global_hack = !global_hack;
         if (k == '2') global_hack = -1;
         break;
      }
      case 146: {
         int k = e->key.keysym.sym;
         int s = e->key.keysym.scancode;
         if (s == SDL_SCANCODE_D) active_control_clear(0);
         if (s == SDL_SCANCODE_A) active_control_clear(1);
         if (s == SDL_SCANCODE_W) active_control_clear(2);
         if (s == 134) active_control_clear(3);
         if (k == SDLK_SPACE) active_control_clear(4);
         if (s == SDL_SCANCODE_LCTRL) active_control_clear(5);
         if (s == 134) active_control_clear(6);
         if (s == SDL_SCANCODE_D) active_control_clear(7);
         break;
      }
   }
}

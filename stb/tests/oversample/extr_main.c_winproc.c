
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int height; int width; int key; int my; int mx; } ;
typedef TYPE_1__ stbwingraph_event ;


 int GL_FRAMEBUFFER_SRGB_EXT ;
 int STBWINGRAPH_unprocessed ;
 int STBWINGRAPH_winproc_exit ;
 int VK_DOWN ;
 int VK_LEFT ;
 int VK_RIGHT ;
 int VK_UP ;
 int black_on_white ;
 int do_mouse (TYPE_1__*,int,int) ;
 int font ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int initialized ;
 int integer_align ;
 int loopmode (int ,int,int ) ;
 int* move ;
 int raw_mouse_x ;
 int raw_mouse_y ;
 int rotate_t ;
 int rotating ;
 int show_tex ;
 int srgb ;
 int stbwingraph_ShowCursor (int *,int) ;
 int sx ;
 int sy ;
 int translate_t ;
 int translating ;

int winproc(void *data, stbwingraph_event *e)
{
   switch (e->type) {
      case 138:
         break;

      case 139:
         switch(e->key) {
            case 27:
               stbwingraph_ShowCursor(((void*)0),1);
               return STBWINGRAPH_winproc_exit;
               break;
            case 'o': case 'O':
               font = (font+1) % 3 + (font/3)*3;
               break;
            case 's': case 'S':
               font = (font+3) % 6;
               break;
            case 't': case 'T':
               translating = !translating;
               translate_t = 0;
               break;
            case 'r': case 'R':
               rotating = !rotating;
               rotate_t = 0;
               break;
            case 'p': case 'P':
               integer_align = !integer_align;
               break;
            case 'g': case 'G':
               srgb = !srgb;
               if (srgb)
                  glEnable(GL_FRAMEBUFFER_SRGB_EXT);
               else
                  glDisable(GL_FRAMEBUFFER_SRGB_EXT);
               break;
            case 'v': case 'V':
               show_tex = !show_tex;
               break;
            case 'b': case 'B':
               black_on_white = !black_on_white;
               break;
         }
         break;

      case 132:
         raw_mouse_x = e->mx;
         raw_mouse_y = e->my;
         break;
      case 136:
         if (e->key == VK_RIGHT) move[0] = 1;
         if (e->key == VK_LEFT) move[1] = 1;
         if (e->key == VK_UP) move[2] = 1;
         if (e->key == VK_DOWN) move[3] = 1;
         break;
      case 135:
         if (e->key == VK_RIGHT) move[0] = 0;
         if (e->key == VK_LEFT) move[1] = 0;
         if (e->key == VK_UP) move[2] = 0;
         if (e->key == VK_DOWN) move[3] = 0;
         break;

      case 128:
         sx = e->width;
         sy = e->height;
         loopmode(0,1,0);
         break;

      case 137:
         if (initialized)
            loopmode(0,1,0);
         break;

      default:
         return STBWINGRAPH_unprocessed;
   }
   return 0;
}

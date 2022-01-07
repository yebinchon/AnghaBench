
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {int * menubar; } ;


 int CAR ;
 int CSI ;
 scalar_t__ FALSE ;
 int GTK_MENU_SHELL (int *) ;
 scalar_t__ KE_CSI ;
 int KS_EXTRA ;
 int KS_MODIFIER ;
 int K_CSI ;
 int K_C_END ;
 int K_C_HOME ;
 int K_DOWN ;
 int K_END ;
 int K_F10 ;
 int K_FOCUSGAINED ;
 int K_FOCUSLOST ;
 int K_HOME ;
 int K_IGNORE ;
 int K_LEFT ;
 int K_NUL ;
 int K_RIGHT ;
 int K_SPECIAL ;
 int K_S_END ;
 int K_S_HOME ;
 int K_TEAROFF ;
 int K_UP ;
 int MB_BYTE2LEN_CHECK (int) ;
 int MB_MAXBYTES ;
 int MOD_MASK_CTRL ;
 int MOD_MASK_SHIFT ;
 int MapVirtualKey (int ,int) ;
 int NUL ;
 int TO_SPECIAL (int,int) ;
 int TRUE ;
 int VK_DECIMAL ;
 int allow_keys ;
 int garbage_collect () ;
 int gtk_menu_shell_select_first (int ,scalar_t__) ;
 TYPE_1__ gui ;
 int gui_make_tearoff (int*) ;
 scalar_t__ has_mbyte ;
 scalar_t__ last_recorded_len ;
 scalar_t__ may_garbage_collect ;
 int mb_ptr2char (int*) ;
 int mod_mask ;
 int mouse_col ;
 int mouse_row ;
 int no_mapping ;
 int old_char ;
 int old_mod_mask ;
 int old_mouse_col ;
 int old_mouse_row ;
 int stub1 (int*) ;
 int ui_focus_change (int) ;
 int vgetorpeek (int ) ;
 int vpeekc () ;
 scalar_t__ want_garbage_collect ;

int
vgetc()
{
    int c, c2;
    if (old_char != -1)
    {
 c = old_char;
 old_char = -1;
 mod_mask = old_mod_mask;




    }
    else
    {
      mod_mask = 0x0;
      last_recorded_len = 0;
      for (;;)
      {
 if (mod_mask)
 {
     ++no_mapping;
     ++allow_keys;
 }
 c = vgetorpeek(TRUE);
 if (mod_mask)
 {
     --no_mapping;
     --allow_keys;
 }


 if (c == K_SPECIAL



    )
 {
     int save_allow_keys = allow_keys;

     ++no_mapping;
     allow_keys = 0;
     c2 = vgetorpeek(TRUE);
     c = vgetorpeek(TRUE);
     --no_mapping;
     allow_keys = save_allow_keys;
     if (c2 == KS_MODIFIER)
     {
  mod_mask = c;
  continue;
     }
     c = TO_SPECIAL(c2, c);
 }
 switch (c)
 {
     case 137: c = '+'; break;
     case 139: c = '-'; break;
     case 141: c = '/'; break;
     case 138: c = '*'; break;
     case 140: c = CAR; break;
     case 136:





        c = '.'; break;

     case 151: c = '0'; break;
     case 150: c = '1'; break;
     case 149: c = '2'; break;
     case 148: c = '3'; break;
     case 147: c = '4'; break;
     case 146: c = '5'; break;
     case 145: c = '6'; break;
     case 144: c = '7'; break;
     case 143: c = '8'; break;
     case 142: c = '9'; break;

     case 133:
     case 128: if (mod_mask == MOD_MASK_SHIFT)
    {
        c = K_S_HOME;
        mod_mask = 0;
    }
    else if (mod_mask == MOD_MASK_CTRL)
    {
        c = K_C_HOME;
        mod_mask = 0;
    }
    else
        c = K_HOME;
    break;
     case 134:
     case 129: if (mod_mask == MOD_MASK_SHIFT)
    {
        c = K_S_END;
        mod_mask = 0;
    }
    else if (mod_mask == MOD_MASK_CTRL)
    {
        c = K_C_END;
        mod_mask = 0;
    }
    else
        c = K_END;
    break;

     case 130: c = K_UP; break;
     case 135: c = K_DOWN; break;
     case 132: c = K_LEFT; break;
     case 131: c = K_RIGHT; break;
 }
 break;
      }
    }
    return c;
}

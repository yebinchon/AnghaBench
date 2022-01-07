
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {scalar_t__ vc_type; } ;


 int CLEAR ;
 scalar_t__ CONV_NONE ;
 scalar_t__ ESC ;
 void* FALSE ;
 long FOREVER ;
 scalar_t__ KE_CURSORHOLD ;
 int KS_EXTRA ;

 int K_SPECIAL ;
 int NUL ;
 void* TRUE ;
 scalar_t__ WaitForChar (long) ;
 scalar_t__ beep_count ;
 int before_blocking () ;
 int bioskey (int ) ;
 int bioskey_read ;
 int bioskey_ready ;
 void* cbrk_pressed ;
 int cons_getch () ;
 scalar_t__ cons_kbhit () ;
 int convert_input (int*,int,int) ;
 void* delayed_redraw ;
 int getch () ;
 TYPE_1__ input_conv ;
 scalar_t__ kbhit () ;
 int mouse_click ;
 void* mouse_hidden ;
 char mouse_x ;
 char mouse_y ;
 int out_flush () ;
 scalar_t__ p_biosk ;
 scalar_t__ p_consk ;
 long p_ut ;
 int set_sys_cursor () ;
 int setcursor () ;
 int show_mouse (void*) ;
 int translate_altkeys (int) ;
 scalar_t__ trigger_cursorhold () ;
 int update_screen (int ) ;

int
mch_inchar(
    char_u *buf,
    int maxlen,
    long time,
    int tb_change_cnt)
{
    int len = 0;
    int c;
    int tmp_c;
    static int nextchar = 0;





    if (delayed_redraw)
    {
 delayed_redraw = FALSE;
 update_screen(CLEAR);
 setcursor();
 out_flush();
    }


    if (nextchar)
    {
 *buf = nextchar;
 nextchar = 0;
 return 1;
    }
    if (time >= 0)
    {
 if (WaitForChar(time) == 0)
 {



     return 0;
 }
    }
    else
    {





 if (WaitForChar(p_ut) == 0)
 {
     before_blocking();
 }
    }
    WaitForChar(FOREVER);
    cbrk_pressed = FALSE;
    {



 if (p_biosk && !p_consk)
 {
     while ((len == 0 || bioskey(bioskey_ready)) && len < maxlen)
     {
  c = translate_altkeys(bioskey(bioskey_read));
  if (c == 0)
      c = 3;
  else if (c == 0x0300)
      c = NUL;
  else if ((c & 0xff) == 0
   || c == 128
   || c == 0x4e2b
   || c == 0x4a2d
   || c == 0x372a
   || ((c & 0xff) == 0xe0 && c != 0xe0))
  {
      if (c == 128)
   c = 3;
      else
   c >>= 8;
      *buf++ = 128;
      ++len;
  }

  if (len < maxlen)
  {
      *buf++ = c;
      len++;







  }
  else
      nextchar = c;
     }
 }
 else
 {
     while ((len == 0 || (p_consk ? cons_kbhit() : kbhit()))
      && len < maxlen)
     {
  switch (c = (p_consk ? cons_getch() : getch()))
  {
      case 0:




   if (p_consk)
       c = cons_getch();
   else
       c = getch();
   tmp_c = translate_altkeys(c << 8);
   if (tmp_c == (c << 8))
   {
       *buf++ = 128;
       ++len;
   }
   else
       c = tmp_c;
   break;
      case 128:
   *buf++ = 128;
   ++len;
   c = 3;
   break;
      case 3:
   cbrk_pressed = TRUE;

      default:
   break;
  }
  if (len < maxlen)
  {
      *buf++ = c;
      ++len;
  }
  else
      nextchar = c;
     }
 }
    }




    beep_count = 0;
    return len;
}

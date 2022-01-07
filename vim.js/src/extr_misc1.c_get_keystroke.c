
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int long_u ;
typedef void* char_u ;


 int CMDLINE ;
 int ESC ;
 int FALSE ;
 int KEYLEN_REMOVED ;
 void* KS_MODIFIER ;
 int K_HOR_SCROLLBAR ;
 int K_IGNORE ;
 int K_LEFTMOUSE ;
 int K_SPECIAL ;
 int K_VER_SCROLLBAR ;
 int MB_BYTE2LEN (int) ;
 void* NUL ;
 int State ;
 int TO_SPECIAL (void*,void*) ;
 void** alloc (int) ;
 int check_termcode (int,void**,int,int*) ;
 int cursor_on () ;
 int do_outofmem_msg (int ) ;
 int fix_input_buffer (void**,int,int) ;
 scalar_t__ has_mbyte ;
 int intr_char ;
 scalar_t__ is_mouse_key (int) ;
 int mapped_ctrl_c ;
 int mb_ptr2char (void**) ;
 int mch_memmove (void**,void**,size_t) ;
 void* mod_mask ;
 scalar_t__ must_redraw ;
 int need_wait_return ;
 int out_flush () ;
 int p_tm ;
 int p_ttimeout ;
 int p_ttm ;
 int setcursor () ;
 int stub1 (void**) ;
 int ui_inchar (void**,int,long,int ) ;
 int update_screen (int ) ;
 int vim_free (void**) ;
 void** vim_realloc (void**,int) ;

int
get_keystroke()
{
    char_u *buf = ((void*)0);
    int buflen = 150;
    int maxlen;
    int len = 0;
    int n;
    int save_mapped_ctrl_c = mapped_ctrl_c;
    int waited = 0;

    mapped_ctrl_c = FALSE;
    for (;;)
    {
 cursor_on();
 out_flush();




 maxlen = (buflen - 6 - len) / 3;
 if (buf == ((void*)0))
     buf = alloc(buflen);
 else if (maxlen < 10)
 {


     buflen += 100;
     buf = vim_realloc(buf, buflen);
     maxlen = (buflen - 6 - len) / 3;
 }
 if (buf == ((void*)0))
 {
     do_outofmem_msg((long_u)buflen);
     return ESC;
 }



 n = ui_inchar(buf + len, maxlen, len == 0 ? -1L : 100L, 0);
 if (n > 0)
 {

     n = fix_input_buffer(buf + len, n, FALSE);
     len += n;
     waited = 0;
 }
 else if (len > 0)
     ++waited;


 if ((n = check_termcode(1, buf, buflen, &len)) < 0
        && (!p_ttimeout || waited * 100L < (p_ttm < 0 ? p_tm : p_ttm)))
     continue;

 if (n == KEYLEN_REMOVED)
 {
     if (must_redraw != 0 && !need_wait_return && (State & CMDLINE) == 0)
     {

  update_screen(0);
  setcursor();
     }
     continue;
 }
 if (n > 0)
     len = n;
 if (len == 0)
     continue;


 n = buf[0];
 if (n == K_SPECIAL)
 {
     n = TO_SPECIAL(buf[1], buf[2]);
     if (buf[1] == KS_MODIFIER
      || n == K_IGNORE







        )
     {
  if (buf[1] == KS_MODIFIER)
      mod_mask = buf[2];
  len -= 3;
  if (len > 0)
      mch_memmove(buf, buf + 3, (size_t)len);
  continue;
     }
     break;
 }
 break;
    }
    vim_free(buf);

    mapped_ctrl_c = save_mapped_ctrl_c;
    return n;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ char_u ;
struct TYPE_2__ {scalar_t__ vc_type; } ;


 scalar_t__ CONV_NONE ;
 scalar_t__ CSI ;
 int Ctrl_C ;
 scalar_t__ ESC ;
 int FALSE ;
 scalar_t__ KE_CURSORHOLD ;
 scalar_t__ KE_SNIFF ;
 scalar_t__ KS_EXTRA ;
 scalar_t__ KS_MODIFIER ;
 int K_NUL ;
 scalar_t__ K_SPECIAL ;
 int MOD_MASK_ALT ;
 scalar_t__ NUL ;
 int TRUE ;
 int TYPEAHEADLEN ;
 scalar_t__ WaitForChar (long) ;
 int before_blocking () ;
 int convert_input_safe (scalar_t__*,int,int,scalar_t__**,int*) ;
 scalar_t__ ctrl_c_interrupts ;
 int enc_dbcs ;
 scalar_t__ fdDump ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,int,int,int) ;
 int fputc (int,scalar_t__) ;
 int fputs (char*,scalar_t__) ;
 int g_fCBrkPressed ;
 int g_nMouseClick ;
 int g_xMouse ;
 int g_yMouse ;
 int got_int ;
 TYPE_1__ input_conv ;
 int mb_char2bytes (scalar_t__,scalar_t__*) ;
 int mch_memmove (scalar_t__*,scalar_t__*,int) ;
 int mch_set_winsize_now () ;
 long p_ut ;
 scalar_t__ sniff_request_waiting ;
 int stub1 (scalar_t__,scalar_t__*) ;
 int tgetch (int*,scalar_t__*) ;
 int trash_input_buf () ;
 scalar_t__ trigger_cursorhold () ;
 scalar_t__ typebuf_changed (int) ;
 int vim_free (scalar_t__*) ;
 scalar_t__ want_sniff_request ;

int
mch_inchar(
    char_u *buf,
    int maxlen,
    long time,
    int tb_change_cnt)
{


    int len;
    int c;

    static char_u typeahead[20];
    static int typeaheadlen = 0;







    if (typeaheadlen > 0)
 goto theend;
    if (time >= 0)
    {
 if (!WaitForChar(time))
     return 0;
    }
    else
    {
 mch_set_winsize_now();






 if (!WaitForChar(p_ut))
 {
     before_blocking();
 }
    }






    g_fCBrkPressed = FALSE;
    while ((typeaheadlen == 0 || WaitForChar(0L))
       && typeaheadlen + 5 <= 20)
    {
 if (typebuf_changed(tb_change_cnt))
 {


     typeaheadlen = 0;
     break;
 }
 {
     char_u ch2 = NUL;
     int modifiers = 0;

     c = tgetch(&modifiers, &ch2);
     if (typebuf_changed(tb_change_cnt))
     {


  typeaheadlen = 0;
  break;
     }

     if (c == Ctrl_C && ctrl_c_interrupts)
     {



  got_int = TRUE;
     }




     {
  int n = 1;


  typeahead[typeaheadlen] = c;
  if (ch2 != NUL)
  {
      typeahead[typeaheadlen + 1] = ch2;
      ++n;
  }
  if ((modifiers & MOD_MASK_ALT)
   && n == 1
   && (typeahead[typeaheadlen] & 0x80) == 0



     )
  {




      typeahead[typeaheadlen] |= 0x80;

      modifiers &= ~MOD_MASK_ALT;
  }

  if (modifiers != 0)
  {

      mch_memmove(typeahead + typeaheadlen + 3,
       typeahead + typeaheadlen, n);
      typeahead[typeaheadlen++] = K_SPECIAL;
      typeahead[typeaheadlen++] = (char_u)KS_MODIFIER;
      typeahead[typeaheadlen++] = modifiers;
  }

  typeaheadlen += n;





     }
 }
    }
theend:

    len = 0;
    while (len < maxlen && typeaheadlen > 0)
    {
 buf[len++] = typeahead[0];
 mch_memmove(typeahead, typeahead + 1, --typeaheadlen);
    }
    return len;




}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_use; } ;


 int CMDLINE ;
 int Ctrl_C ;
 int FALSE ;
 int K_ZERO ;
 int MB_BYTE2LEN_CHECK (int) ;
 int State ;
 void* TRUE ;
 int VIM_ISDIGIT (int) ;
 int add_to_showcmd (int) ;
 int allow_keys ;
 void* dont_scroll ;
 scalar_t__ enc_dbcs ;
 int got_int ;
 TYPE_1__ gui ;
 int hex2nr (int) ;
 int no_mapping ;
 int plain_vgetc () ;
 int vim_isxdigit (int) ;
 int vungetc (int) ;

int
get_literal()
{
    int cc;
    int nc;
    int i;
    int hex = FALSE;
    int octal = FALSE;




    if (got_int)
 return Ctrl_C;
    ++no_mapping;
    cc = 0;
    i = 0;
    for (;;)
    {
 nc = plain_vgetc();
 if (nc == 'x' || nc == 'X')
     hex = TRUE;
 else if (nc == 'o' || nc == 'O')
     octal = TRUE;




 else
 {
     if (hex



      )
     {
  if (!vim_isxdigit(nc))
      break;
  cc = cc * 16 + hex2nr(nc);
     }
     else if (octal)
     {
  if (nc < '0' || nc > '7')
      break;
  cc = cc * 8 + nc - '0';
     }
     else
     {
  if (!VIM_ISDIGIT(nc))
      break;
  cc = cc * 10 + nc - '0';
     }

     ++i;
 }

 if (cc > 255



  )
     cc = 255;
 nc = 0;

 if (hex)
 {
     if (i >= 2)
  break;
 }







 else if (i >= 3)
     break;
    }
    if (i == 0)
    {
 if (nc == K_ZERO)
 {
     cc = '\n';
     nc = 0;
 }
 else
 {
     cc = nc;
     nc = 0;
 }
    }

    if (cc == 0)
 cc = '\n';






    --no_mapping;




    if (nc)
 vungetc(nc);
    got_int = FALSE;
    return cc;
}

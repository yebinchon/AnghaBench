
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char char_u ;
typedef int buf ;
struct TYPE_5__ {int b_p_ro; int * b_ffname; int * b_fname; int b_p_ma; } ;


 int Columns ;
 void* FALSE ;
 int IOSIZE ;
 scalar_t__ NUL ;
 int OPT_FREE ;
 int SID_ERROR ;
 int SPACE_FOR_ARGNR ;
 int SPACE_FOR_DIR ;
 size_t SPACE_FOR_FNAME ;
 int STL_IN_ICON ;
 int STL_IN_TITLE ;
 int STRCAT (char*,char*) ;
 int STRCPY (char*,char*) ;
 scalar_t__ STRLEN (char*) ;
 void* TRUE ;
 scalar_t__ _ (char*) ;
 int append_arg_number (int ,char*,int,void*) ;
 int bufIsChanged (TYPE_1__*) ;
 char* buf_spname (TYPE_1__*) ;
 int build_stl_str_hl (int ,char*,int,scalar_t__*,int,int ,int,int *,int *) ;
 int called_emsg ;
 TYPE_1__* curbuf ;
 int curwin ;
 char* gettail (int *) ;
 char* gettail_sep (char*) ;
 scalar_t__ has_mbyte ;
 int home_replace (TYPE_1__*,int *,char*,int,void*) ;
 scalar_t__ isalpha (char) ;
 int * lasticon ;
 int * lasttitle ;
 scalar_t__ mb_tail_off (char*,char*) ;
 void* need_maketitle ;
 scalar_t__ p_icon ;
 scalar_t__* p_iconstring ;
 scalar_t__ p_title ;
 int p_titlelen ;
 scalar_t__* p_titlestring ;
 int redrawing () ;
 int resettitle () ;
 int * serverName ;
 int set_string_option_direct (char*,int,char*,int ,int ) ;
 int stl_syntax ;
 scalar_t__ stub1 (char*,char*) ;
 int ti_change (char*,int **) ;
 int trans_characters (char*,int) ;
 char* transstr (char*) ;
 int trunc_string (char*,char*,int,int) ;
 int vim_free (char*) ;
 int vim_strcat (char*,int *,int) ;
 int vim_strncpy (char*,char*,size_t) ;
 int vim_strsize (char*) ;
 int was_set_insecurely (char*,int ) ;

void
maketitle()
{
    char_u *p;
    char_u *t_str = ((void*)0);
    char_u *i_name;
    char_u *i_str = ((void*)0);
    int maxlen = 0;
    int len;
    int mustset;
    char_u buf[IOSIZE];
    int off;

    if (!redrawing())
    {

 need_maketitle = TRUE;
 return;
    }

    need_maketitle = FALSE;
    if (!p_title && !p_icon && lasttitle == ((void*)0) && lasticon == ((void*)0))
 return;

    if (p_title)
    {
 if (p_titlelen > 0)
 {
     maxlen = p_titlelen * Columns / 100;
     if (maxlen < 10)
  maxlen = 10;
 }

 t_str = buf;
 if (*p_titlestring != NUL)
 {
  t_str = p_titlestring;
 }
 else
 {





     if (curbuf->b_fname == ((void*)0))
  vim_strncpy(buf, (char_u *)_("[No Name]"), (IOSIZE - 100));
     else
     {
  p = transstr(gettail(curbuf->b_fname));
  vim_strncpy(buf, p, (IOSIZE - 100));
  vim_free(p);
     }

     switch (bufIsChanged(curbuf)
      + (curbuf->b_p_ro * 2)
      + (!curbuf->b_p_ma * 4))
     {
  case 1: STRCAT(buf, " +"); break;
  case 2: STRCAT(buf, " ="); break;
  case 3: STRCAT(buf, " =+"); break;
  case 4:
  case 6: STRCAT(buf, " -"); break;
  case 5:
  case 7: STRCAT(buf, " -+"); break;
     }

     if (curbuf->b_fname != ((void*)0))
     {

  off = (int)STRLEN(buf);
  buf[off++] = ' ';
  buf[off++] = '(';
  home_replace(curbuf, curbuf->b_ffname,
     buf + off, (IOSIZE - 20) - off, TRUE);






  p = gettail_sep(buf + off);
  if (p == buf + off)

      vim_strncpy(buf + off, (char_u *)_("help"),
        (size_t)((IOSIZE - 20) - off - 1));
  else
      *p = NUL;




  if (off < (IOSIZE - 20))
  {
      p = transstr(buf + off);
      vim_strncpy(buf + off, p, (size_t)((IOSIZE - 20) - off));
      vim_free(p);
  }
  else
  {
      vim_strncpy(buf + off, (char_u *)"...",
          (size_t)((IOSIZE - 10) - off));
  }
  STRCAT(buf, ")");
     }

     append_arg_number(curwin, buf, (IOSIZE - 10), FALSE);
  STRCAT(buf, " - VIM");

     if (maxlen > 0)
     {

  if (vim_strsize(buf) > maxlen)
      trunc_string(buf, buf, maxlen, IOSIZE);
     }
 }
    }
    mustset = ti_change(t_str, &lasttitle);

    if (p_icon)
    {
 i_str = buf;
 if (*p_iconstring != NUL)
 {
  i_str = p_iconstring;
 }
 else
 {
     if (buf_spname(curbuf) != ((void*)0))
  i_name = buf_spname(curbuf);
     else
  i_name = gettail(curbuf->b_ffname);
     *i_str = NUL;

     len = (int)STRLEN(i_name);
     if (len > 100)
     {
  len -= 100;




  i_name += len;
     }
     STRCPY(i_str, i_name);
     trans_characters(i_str, IOSIZE);
 }
    }

    mustset |= ti_change(i_str, &lasticon);

    if (mustset)
 resettitle();
}

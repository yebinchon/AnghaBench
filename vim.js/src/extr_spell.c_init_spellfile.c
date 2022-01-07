
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ char_u ;
struct TYPE_14__ {scalar_t__ ga_len; } ;
struct TYPE_13__ {TYPE_2__* lp_slang; } ;
struct TYPE_8__ {scalar_t__* b_p_spl; } ;
struct TYPE_12__ {TYPE_1__ b_s; } ;
struct TYPE_11__ {TYPE_3__* w_s; } ;
struct TYPE_10__ {scalar_t__* b_p_spl; TYPE_7__ b_langp; } ;
struct TYPE_9__ {scalar_t__* sl_fname; } ;


 int FALSE ;
 TYPE_6__* LANGP_ENTRY (TYPE_7__,int ) ;
 scalar_t__ MAXPATHL ;
 scalar_t__ NUL ;
 int OPT_LOCAL ;
 scalar_t__ STRLEN (scalar_t__*) ;
 int TRUE ;
 scalar_t__* alloc (scalar_t__) ;
 int copy_option_part (scalar_t__**,scalar_t__*,scalar_t__,char*) ;
 TYPE_5__* curbuf ;
 TYPE_4__* curwin ;
 int filewritable (scalar_t__*) ;
 scalar_t__ gettail (scalar_t__*) ;
 scalar_t__* p_rtp ;
 int set_option_value (scalar_t__*,long,scalar_t__*,int ) ;
 scalar_t__* spell_enc () ;
 int * strstr (char*,char*) ;
 int vim_free (scalar_t__*) ;
 scalar_t__ vim_ispathsep (scalar_t__) ;
 int vim_mkdir (scalar_t__*,int) ;
 int vim_snprintf (char*,scalar_t__,char*,...) ;
 int * vim_strchr (scalar_t__*,scalar_t__) ;
 int vim_strncpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static void
init_spellfile()
{
    char_u *buf;
    int l;
    char_u *fname;
    char_u *rtp;
    char_u *lend;
    int aspath = FALSE;
    char_u *lstart = curbuf->b_s.b_p_spl;

    if (*curwin->w_s->b_p_spl != NUL && curwin->w_s->b_langp.ga_len > 0)
    {
 buf = alloc(MAXPATHL);
 if (buf == ((void*)0))
     return;



 for (lend = curwin->w_s->b_p_spl; *lend != NUL
   && vim_strchr((char_u *)",._", *lend) == ((void*)0); ++lend)
     if (vim_ispathsep(*lend))
     {
  aspath = TRUE;
  lstart = lend + 1;
     }



 rtp = p_rtp;
 while (*rtp != NUL)
 {
     if (aspath)


  vim_strncpy(buf, curbuf->b_s.b_p_spl,
         lstart - curbuf->b_s.b_p_spl - 1);
     else

  copy_option_part(&rtp, buf, MAXPATHL, ",");
     if (filewritable(buf) == 2)
     {


  if (aspath)
      vim_strncpy(buf, curbuf->b_s.b_p_spl,
        lend - curbuf->b_s.b_p_spl);
  else
  {

      l = (int)STRLEN(buf);
      vim_snprintf((char *)buf + l, MAXPATHL - l, "/spell");
      if (filewritable(buf) != 2)
   vim_mkdir(buf, 0755);

      l = (int)STRLEN(buf);
      vim_snprintf((char *)buf + l, MAXPATHL - l,
     "/%.*s", (int)(lend - lstart), lstart);
  }
  l = (int)STRLEN(buf);
  fname = LANGP_ENTRY(curwin->w_s->b_langp, 0)
        ->lp_slang->sl_fname;
  vim_snprintf((char *)buf + l, MAXPATHL - l, ".%s.add",
   fname != ((void*)0)
     && strstr((char *)gettail(fname), ".ascii.") != ((void*)0)
           ? (char_u *)"ascii" : spell_enc());
  set_option_value((char_u *)"spellfile", 0L, buf, OPT_LOCAL);
  break;
     }
     aspath = FALSE;
 }

 vim_free(buf);
    }
}

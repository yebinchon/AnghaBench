
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef scalar_t__ time_t ;
struct TYPE_14__ {scalar_t__ sl_sugtime; int sl_sidxs; int sl_sbyts; int sl_fidxs; int sl_fbyts; int * sl_sugbuf; scalar_t__ sl_fname; scalar_t__ sl_sugloaded; } ;
typedef TYPE_2__ slang_T ;
typedef int linenr_T ;
struct TYPE_15__ {TYPE_2__* lp_slang; } ;
typedef TYPE_3__ langp_T ;
struct TYPE_16__ {scalar_t__ ga_len; scalar_t__ ga_data; } ;
typedef TYPE_4__ garray_T ;
typedef int char_u ;
struct TYPE_17__ {TYPE_1__* w_s; } ;
struct TYPE_12__ {int ga_len; } ;
struct TYPE_13__ {TYPE_11__ b_langp; } ;
typedef int FILE ;


 int EMSG2 (int ,scalar_t__) ;
 scalar_t__ FAIL ;
 int FALSE ;
 TYPE_3__* LANGP_ENTRY (TYPE_11__,int) ;
 int MAXWLEN ;
 int NUL ;
 int STRCPY (int*,char*) ;
 scalar_t__ STRNCMP (int*,int ,int) ;
 scalar_t__ TRUE ;
 int VIMSUGMAGIC ;
 int VIMSUGMAGICL ;
 int VIMSUGVERSION ;
 int _ (char*) ;
 TYPE_9__* curwin ;
 int fclose (int *) ;
 scalar_t__ fnamecmp (int*,char*) ;
 int ga_clear (TYPE_4__*) ;
 scalar_t__ ga_grow (TYPE_4__*,int) ;
 int ga_init2 (TYPE_4__*,int,int) ;
 int get4c (int *) ;
 scalar_t__ get8ctime (int *) ;
 void* getc (int *) ;
 int * mch_fopen (char*,char*) ;
 scalar_t__ ml_append_buf (int *,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int * open_spellbuf () ;
 int slang_clear_sug (TYPE_2__*) ;
 scalar_t__ spell_read_tree (int *,int *,int *,int ,int ) ;
 int tree_count_words (int ,int ) ;
 int* vim_strrchr (scalar_t__,char) ;

__attribute__((used)) static void
suggest_load_files()
{
    langp_T *lp;
    int lpi;
    slang_T *slang;
    char_u *dotp;
    FILE *fd;
    char_u buf[MAXWLEN];
    int i;
    time_t timestamp;
    int wcount;
    int wordnr;
    garray_T ga;
    int c;


    for (lpi = 0; lpi < curwin->w_s->b_langp.ga_len; ++lpi)
    {
 lp = LANGP_ENTRY(curwin->w_s->b_langp, lpi);
 slang = lp->lp_slang;
 if (slang->sl_sugtime != 0 && !slang->sl_sugloaded)
 {



     slang->sl_sugloaded = TRUE;

     dotp = vim_strrchr(slang->sl_fname, '.');
     if (dotp == ((void*)0) || fnamecmp(dotp, ".spl") != 0)
  continue;
     STRCPY(dotp, ".sug");
     fd = mch_fopen((char *)slang->sl_fname, "r");
     if (fd == ((void*)0))
  goto nextone;




     for (i = 0; i < VIMSUGMAGICL; ++i)
  buf[i] = getc(fd);
     if (STRNCMP(buf, VIMSUGMAGIC, VIMSUGMAGICL) != 0)
     {
  EMSG2(_("E778: This does not look like a .sug file: %s"),
            slang->sl_fname);
  goto nextone;
     }
     c = getc(fd);
     if (c < VIMSUGVERSION)
     {
  EMSG2(_("E779: Old .sug file, needs to be updated: %s"),
            slang->sl_fname);
  goto nextone;
     }
     else if (c > VIMSUGVERSION)
     {
  EMSG2(_("E780: .sug file is for newer version of Vim: %s"),
            slang->sl_fname);
  goto nextone;
     }



     timestamp = get8ctime(fd);
     if (timestamp != slang->sl_sugtime)
     {
  EMSG2(_("E781: .sug file doesn't match .spl file: %s"),
            slang->sl_fname);
  goto nextone;
     }





     if (spell_read_tree(fd, &slang->sl_sbyts, &slang->sl_sidxs,
              FALSE, 0) != 0)
     {
someerror:
  EMSG2(_("E782: error while reading .sug file: %s"),
            slang->sl_fname);
  slang_clear_sug(slang);
  goto nextone;
     }
     slang->sl_sugbuf = open_spellbuf();
     if (slang->sl_sugbuf == ((void*)0))
  goto someerror;

     wcount = get4c(fd);
     if (wcount < 0)
  goto someerror;



     ga_init2(&ga, 1, 100);
     for (wordnr = 0; wordnr < wcount; ++wordnr)
     {
  ga.ga_len = 0;
  for (;;)
  {
      c = getc(fd);
      if (c < 0 || ga_grow(&ga, 1) == FAIL)
   goto someerror;
      ((char_u *)ga.ga_data)[ga.ga_len++] = c;
      if (c == NUL)
   break;
  }
  if (ml_append_buf(slang->sl_sugbuf, (linenr_T)wordnr,
      ga.ga_data, ga.ga_len, TRUE) == FAIL)
      goto someerror;
     }
     ga_clear(&ga);





     tree_count_words(slang->sl_fbyts, slang->sl_fidxs);
     tree_count_words(slang->sl_sbyts, slang->sl_sidxs);

nextone:
     if (fd != ((void*)0))
  fclose(fd);
     STRCPY(dotp, ".spl");
 }
    }
}

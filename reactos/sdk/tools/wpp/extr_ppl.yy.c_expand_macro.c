
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* mtext; } ;
struct TYPE_12__ {scalar_t__ type; scalar_t__ expanding; int nargs; char* ident; TYPE_1__ subst; } ;
typedef TYPE_2__ pp_entry_t ;
struct TYPE_13__ {struct TYPE_13__* next; } ;
typedef TYPE_3__ mtext_t ;
struct TYPE_14__ {int nargs; scalar_t__* nnls; TYPE_2__* ppp; } ;
typedef TYPE_4__ macexpstackentry_t ;
struct TYPE_15__ {char* input; int line_number; } ;


 int abs (int) ;
 TYPE_3__* add_expand_text (TYPE_3__*,TYPE_4__*,int*) ;
 int add_text (char*,int) ;
 int assert (int) ;
 int curdef_idx ;
 char* curdef_text ;
 scalar_t__ def_macro ;
 int fprintf (int ,char*,...) ;
 int isspace (char) ;
 int macexpstackidx ;
 scalar_t__ pp_flex_debug ;
 TYPE_6__ pp_status ;
 int ppy__scan_string (char*) ;
 int ppy_error (char*,char*,int) ;
 int push_buffer (TYPE_2__*,int *,int *,int ) ;
 int stderr ;

__attribute__((used)) static void expand_macro(macexpstackentry_t *mep)
{
 mtext_t *mtp;
 int n, k;
 char *cptr;
 int nnl = 0;
 pp_entry_t *ppp = mep->ppp;
 int nargs = mep->nargs;

 assert(ppp->type == def_macro);
 assert(ppp->expanding == 0);

 if((ppp->nargs >= 0 && nargs != ppp->nargs) || (ppp->nargs < 0 && nargs < -ppp->nargs))
 {
  ppy_error("Too %s macro arguments (%d)", nargs < abs(ppp->nargs) ? "few" : "many", nargs);
  return;
 }

 for(n = 0; n < nargs; n++)
  nnl += mep->nnls[n];

 if(pp_flex_debug)
  fprintf(stderr, "expand_macro(%d): %s:%d: '%s'(%d,%d) -> ...\n",
   macexpstackidx,
   pp_status.input,
   pp_status.line_number,
   ppp->ident,
   mep->nargs,
   nnl);

 curdef_idx = 0;

 for(mtp = ppp->subst.mtext; mtp; mtp = mtp->next)
 {
  if(!(mtp = add_expand_text(mtp, mep, &nnl)))
   break;
 }

 for(n = 0; n < nnl; n++)
  add_text("\n", 1);


 add_text(" \0", 2);


 for(k = curdef_idx, cptr = &curdef_text[curdef_idx-1]; k > 0; k--, cptr--)
 {
  if(!isspace(*cptr & 0xff))
   break;
 }





 *(++cptr) = ' ';
 *(++cptr) = '\0';
 k++;


 for(n = 0, cptr = curdef_text; n < k; n++, cptr++)
 {
  if(!isspace(*cptr & 0xff))
   break;
 }

 if(k - n > 0)
 {
  if(pp_flex_debug)
   fprintf(stderr, "expand_text: '%s'\n", curdef_text + n);
  push_buffer(ppp, ((void*)0), ((void*)0), 0);

  ppy__scan_string(curdef_text + n);
 }
}

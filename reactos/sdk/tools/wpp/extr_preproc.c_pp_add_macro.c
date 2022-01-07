
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* mtext; } ;
struct TYPE_15__ {int linenumber; char* ident; int nargs; struct TYPE_15__* prev; struct TYPE_15__* next; int filename; TYPE_1__ subst; int ** margs; int type; } ;
typedef TYPE_3__ pp_entry_t ;
struct TYPE_14__ {char* text; int argidx; } ;
struct TYPE_16__ {int type; TYPE_2__ subst; struct TYPE_16__* next; } ;
typedef TYPE_4__ mtext_t ;
typedef int marg_t ;
struct TYPE_18__ {TYPE_3__** defines; } ;
struct TYPE_17__ {char* input; int line_number; scalar_t__ debug; scalar_t__ pedantic; } ;


 int def_macro ;




 int fprintf (int ,char*,...) ;
 int free (TYPE_3__*) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_8__* pp_def_state ;
 int pp_del_define (char*) ;
 TYPE_7__ pp_status ;
 TYPE_3__* pp_xmalloc (int) ;
 int pp_xstrdup (char*) ;
 int pphash (char*) ;
 TYPE_3__* pplookup (char*) ;
 int ppy_warning (char*,char*,int ,int) ;
 int stderr ;

pp_entry_t *pp_add_macro(char *id, marg_t *args[], int nargs, mtext_t *exp)
{
 int idx;
 pp_entry_t *ppp;

 if(!id)
  return ((void*)0);
 idx = pphash(id);
 if((ppp = pplookup(id)) != ((void*)0))
 {
  if(pp_status.pedantic)
   ppy_warning("Redefinition of %s\n\tPrevious definition: %s:%d", id, ppp->filename, ppp->linenumber);
  pp_del_define(id);
 }
 ppp = pp_xmalloc(sizeof(pp_entry_t));
 if(!ppp)
  return ((void*)0);
 memset( ppp, 0, sizeof(*ppp) );
 ppp->ident = id;
 ppp->type = def_macro;
 ppp->margs = args;
 ppp->nargs = nargs;
 ppp->subst.mtext= exp;
 ppp->filename = pp_xstrdup(pp_status.input ? pp_status.input : "<internal or cmdline>");
 if(!ppp->filename)
 {
  free(ppp);
  return ((void*)0);
 }
 ppp->linenumber = pp_status.input ? pp_status.line_number : 0;
 ppp->next = pp_def_state->defines[idx];
 pp_def_state->defines[idx] = ppp;
 if(ppp->next)
  ppp->next->prev = ppp;

 if(pp_status.debug)
 {
  fprintf(stderr, "Added macro (%s, %d) <%s(%d)> to <", pp_status.input, pp_status.line_number, ppp->ident, nargs);
  for(; exp; exp = exp->next)
  {
   switch(exp->type)
   {
   case 128:
    fprintf(stderr, " \"%s\" ", exp->subst.text);
    break;
   case 130:
    fprintf(stderr, " #(%d) ", exp->subst.argidx);
    break;
   case 131:
    fprintf(stderr, "##");
    break;
   case 129:
    fprintf(stderr, " <%d> ", exp->subst.argidx);
    break;
   }
  }
  fprintf(stderr, ">\n");
 }
 return ppp;
}

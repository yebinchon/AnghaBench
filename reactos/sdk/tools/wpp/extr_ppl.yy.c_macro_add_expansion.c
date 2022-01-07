
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char** ppargs; int nargs; char* curarg; scalar_t__ curargsize; scalar_t__ curargalloc; TYPE_1__* ppp; } ;
typedef TYPE_2__ macexpstackentry_t ;
struct TYPE_7__ {char* input; int line_number; } ;
struct TYPE_5__ {scalar_t__ expanding; } ;


 int assert (int) ;
 int fprintf (int ,char*,char*,int,int,char*) ;
 int free (char*) ;
 scalar_t__ pp_flex_debug ;
 TYPE_4__ pp_status ;
 char* pp_xstrdup (char*) ;
 int stderr ;
 TYPE_2__* top_macro () ;

__attribute__((used)) static void macro_add_expansion(void)
{
 macexpstackentry_t *mep = top_macro();

 assert(mep->ppp->expanding == 0);

 mep->ppargs[mep->nargs-1] = pp_xstrdup(mep->curarg ? mep->curarg : "");
 free(mep->curarg);
 mep->curargalloc = mep->curargsize = 0;
 mep->curarg = ((void*)0);

 if(pp_flex_debug)
  fprintf(stderr, "macro_add_expansion: %s:%d: %d -> '%s'\n",
   pp_status.input,
   pp_status.line_number,
   mep->nargs-1,
   mep->ppargs[mep->nargs-1] ? mep->ppargs[mep->nargs-1] : "");
}

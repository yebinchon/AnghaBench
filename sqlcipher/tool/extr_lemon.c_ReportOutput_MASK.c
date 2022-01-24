#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct symbol {char* name; scalar_t__ type; int prec; scalar_t__ bContent; scalar_t__ firstset; scalar_t__ lambda; } ;
struct state {int statenum; struct action* ap; struct config* cfp; struct config* bp; } ;
struct rule {int iRule; TYPE_2__* precsym; struct rule* next; } ;
struct lemon {int nxstate; int nsymbol; int nterminal; struct rule* rule; struct symbol** symbols; scalar_t__ basisflag; struct state** sorted; } ;
struct config {scalar_t__ dot; struct config* next; struct config* bp; int /*<<< orphan*/  bplp; int /*<<< orphan*/  fplp; int /*<<< orphan*/  fws; TYPE_1__* rp; } ;
struct action {struct action* next; } ;
struct TYPE_4__ {char* name; int prec; } ;
struct TYPE_3__ {scalar_t__ nrhs; int /*<<< orphan*/  iRule; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct config*) ; 
 scalar_t__ NONTERMINAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct action*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lemon*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct lemon*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct rule*) ; 
 scalar_t__ FUNC10 (char*) ; 

void FUNC11(struct lemon *lemp)
{
  int i, n;
  struct state *stp;
  struct config *cfp;
  struct action *ap;
  struct rule *rp;
  FILE *fp;

  fp = FUNC6(lemp,".out","wb");
  if( fp==0 ) return;
  for(i=0; i<lemp->nxstate; i++){
    stp = lemp->sorted[i];
    FUNC7(fp,"State %d:\n",stp->statenum);
    if( lemp->basisflag ) cfp=stp->bp;
    else                  cfp=stp->cfp;
    while( cfp ){
      char buf[20];
      if( cfp->dot==cfp->rp->nrhs ){
        FUNC8(buf,"(%d)",cfp->rp->iRule);
        FUNC7(fp,"    %5s ",buf);
      }else{
        FUNC7(fp,"          ");
      }
      FUNC0(fp,cfp);
      FUNC7(fp,"\n");
#if 0
      SetPrint(fp,cfp->fws,lemp);
      PlinkPrint(fp,cfp->fplp,"To  ");
      PlinkPrint(fp,cfp->bplp,"From");
#endif
      if( lemp->basisflag ) cfp=cfp->bp;
      else                  cfp=cfp->next;
    }
    FUNC7(fp,"\n");
    for(ap=stp->ap; ap; ap=ap->next){
      if( FUNC2(ap,fp,30) ) FUNC7(fp,"\n");
    }
    FUNC7(fp,"\n");
  }
  FUNC7(fp, "----------------------------------------------------\n");
  FUNC7(fp, "Symbols:\n");
  FUNC7(fp, "The first-set of non-terminals is shown after the name.\n\n");
  for(i=0; i<lemp->nsymbol; i++){
    int j;
    struct symbol *sp;

    sp = lemp->symbols[i];
    FUNC7(fp, "  %3d: %s", i, sp->name);
    if( sp->type==NONTERMINAL ){
      FUNC7(fp, ":");
      if( sp->lambda ){
        FUNC7(fp, " <lambda>");
      }
      for(j=0; j<lemp->nterminal; j++){
        if( sp->firstset && FUNC3(sp->firstset, j) ){
          FUNC7(fp, " %s", lemp->symbols[j]->name);
        }
      }
    }
    if( sp->prec>=0 ) FUNC7(fp," (precedence=%d)", sp->prec);
    FUNC7(fp, "\n");
  }
  FUNC7(fp, "----------------------------------------------------\n");
  FUNC7(fp, "Syntax-only Symbols:\n");
  FUNC7(fp, "The following symbols never carry semantic content.\n\n");
  for(i=n=0; i<lemp->nsymbol; i++){
    int w;
    struct symbol *sp = lemp->symbols[i];
    if( sp->bContent ) continue;
    w = (int)FUNC10(sp->name);
    if( n>0 && n+w>75 ){
      FUNC7(fp,"\n");
      n = 0;
    }
    if( n>0 ){
      FUNC7(fp, " ");
      n++;
    }
    FUNC7(fp, "%s", sp->name);
    n += w;
  }
  if( n>0 ) FUNC7(fp, "\n");
  FUNC7(fp, "----------------------------------------------------\n");
  FUNC7(fp, "Rules:\n");
  for(rp=lemp->rule; rp; rp=rp->next){
    FUNC7(fp, "%4d: ", rp->iRule);
    FUNC9(fp, rp);
    FUNC7(fp,".");
    if( rp->precsym ){
      FUNC7(fp," [%s precedence=%d]",
              rp->precsym->name, rp->precsym->prec);
    }
    FUNC7(fp,"\n");
  }
  FUNC5(fp);
  return;
}
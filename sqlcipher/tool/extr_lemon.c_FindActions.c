
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct state {struct action* ap; struct config* cfp; } ;
struct rule {int ruleline; scalar_t__ canReduce; struct rule* next; } ;
struct lemon {int nstate; int nterminal; int errorcnt; int filename; struct rule* rule; struct state** sorted; int nconflict; TYPE_2__* startRule; scalar_t__ start; struct symbol** symbols; } ;
struct config {scalar_t__ dot; TYPE_1__* rp; int fws; struct config* next; } ;
struct TYPE_8__ {TYPE_3__* rp; } ;
struct action {scalar_t__ sp; scalar_t__ type; TYPE_4__ x; struct action* next; } ;
struct TYPE_7__ {int canReduce; } ;
struct TYPE_6__ {struct symbol* lhs; } ;
struct TYPE_5__ {scalar_t__ nrhs; } ;


 scalar_t__ ACCEPT ;
 int Action_add (struct action**,scalar_t__,struct symbol*,char*) ;
 struct action* Action_sort (struct action*) ;
 int ErrorMsg (int ,int ,char*) ;
 scalar_t__ LEMON_FALSE ;
 int LEMON_TRUE ;
 scalar_t__ REDUCE ;
 scalar_t__ SetFind (int ,int) ;
 struct symbol* Symbol_find (scalar_t__) ;
 scalar_t__ resolve_conflict (struct action*,struct action*) ;

void FindActions(struct lemon *lemp)
{
  int i,j;
  struct config *cfp;
  struct state *stp;
  struct symbol *sp;
  struct rule *rp;





  for(i=0; i<lemp->nstate; i++){
    stp = lemp->sorted[i];
    for(cfp=stp->cfp; cfp; cfp=cfp->next){
      if( cfp->rp->nrhs==cfp->dot ){
        for(j=0; j<lemp->nterminal; j++){
          if( SetFind(cfp->fws,j) ){


            Action_add(&stp->ap,REDUCE,lemp->symbols[j],(char *)cfp->rp);
          }
        }
      }
    }
  }


  if( lemp->start ){
    sp = Symbol_find(lemp->start);
    if( sp==0 ) sp = lemp->startRule->lhs;
  }else{
    sp = lemp->startRule->lhs;
  }



  Action_add(&lemp->sorted[0]->ap,ACCEPT,sp,0);


  for(i=0; i<lemp->nstate; i++){
    struct action *ap, *nap;
    stp = lemp->sorted[i];

    stp->ap = Action_sort(stp->ap);
    for(ap=stp->ap; ap && ap->next; ap=ap->next){
      for(nap=ap->next; nap && nap->sp==ap->sp; nap=nap->next){


         lemp->nconflict += resolve_conflict(ap,nap);
      }
    }
  }


  for(rp=lemp->rule; rp; rp=rp->next) rp->canReduce = LEMON_FALSE;
  for(i=0; i<lemp->nstate; i++){
    struct action *ap;
    for(ap=lemp->sorted[i]->ap; ap; ap=ap->next){
      if( ap->type==REDUCE ) ap->x.rp->canReduce = LEMON_TRUE;
    }
  }
  for(rp=lemp->rule; rp; rp=rp->next){
    if( rp->canReduce ) continue;
    ErrorMsg(lemp->filename,rp->ruleline,"This rule can not be reduced.\n");
    lemp->errorcnt++;
  }
}

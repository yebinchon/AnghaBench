
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {struct rule* rule; int name; } ;
struct rule {int nrhs; int lhsStart; struct rule* nextlhs; struct symbol** rhs; struct rule* next; } ;
struct lemon {int errorcnt; int filename; struct rule* rule; TYPE_1__* startRule; scalar_t__ start; } ;
struct config {int fws; } ;
struct TYPE_2__ {struct symbol* lhs; } ;


 struct config* Configlist_addbasis (struct rule*,int ) ;
 int Configlist_init () ;
 int ErrorMsg (int ,int ,char*,int ,...) ;
 int SetAdd (int ,int ) ;
 struct symbol* Symbol_find (scalar_t__) ;
 int getstate (struct lemon*) ;

void FindStates(struct lemon *lemp)
{
  struct symbol *sp;
  struct rule *rp;

  Configlist_init();


  if( lemp->start ){
    sp = Symbol_find(lemp->start);
    if( sp==0 ){
      ErrorMsg(lemp->filename,0,
"The specified start symbol \"%s\" is not in a nonterminal of the grammar.  \"%s\" will be used as the start symbol instead.",lemp->start,lemp->startRule->lhs->name);


      lemp->errorcnt++;
      sp = lemp->startRule->lhs;
    }
  }else{
    sp = lemp->startRule->lhs;
  }




  for(rp=lemp->rule; rp; rp=rp->next){
    int i;
    for(i=0; i<rp->nrhs; i++){
      if( rp->rhs[i]==sp ){
        ErrorMsg(lemp->filename,0,
"The start symbol \"%s\" occurs on the right-hand side of a rule. This will result in a parser which does not work properly.",sp->name);


        lemp->errorcnt++;
      }
    }
  }




  for(rp=sp->rule; rp; rp=rp->nextlhs){
    struct config *newcfp;
    rp->lhsStart = 1;
    newcfp = Configlist_addbasis(rp,0);
    SetAdd(newcfp->fws,0);
  }




  (void)getstate(lemp);
  return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {scalar_t__ type; int nsubsym; scalar_t__ lambda; int firstset; TYPE_1__** subsym; int index; struct rule* rule; int name; } ;
struct rule {int nrhs; struct symbol** rhs; struct rule* nextlhs; int line; } ;
struct lemon {int errorcnt; int filename; struct symbol* errsym; } ;
struct config {int dot; int fplp; int fws; struct rule* rp; struct config* next; } ;
struct TYPE_2__ {int index; } ;


 struct config* Configlist_add (struct rule*,int ) ;
 int ErrorMsg (int ,int ,char*,int ) ;
 scalar_t__ LEMON_FALSE ;
 scalar_t__ MULTITERMINAL ;
 scalar_t__ NONTERMINAL ;
 int Plink_add (int *,struct config*) ;
 int SetAdd (int ,int ) ;
 int SetUnion (int ,int ) ;
 scalar_t__ TERMINAL ;
 int assert (int) ;
 struct config* current ;
 scalar_t__ currentend ;

void Configlist_closure(struct lemon *lemp)
{
  struct config *cfp, *newcfp;
  struct rule *rp, *newrp;
  struct symbol *sp, *xsp;
  int i, dot;

  assert( currentend!=0 );
  for(cfp=current; cfp; cfp=cfp->next){
    rp = cfp->rp;
    dot = cfp->dot;
    if( dot>=rp->nrhs ) continue;
    sp = rp->rhs[dot];
    if( sp->type==NONTERMINAL ){
      if( sp->rule==0 && sp!=lemp->errsym ){
        ErrorMsg(lemp->filename,rp->line,"Nonterminal \"%s\" has no rules.",
          sp->name);
        lemp->errorcnt++;
      }
      for(newrp=sp->rule; newrp; newrp=newrp->nextlhs){
        newcfp = Configlist_add(newrp,0);
        for(i=dot+1; i<rp->nrhs; i++){
          xsp = rp->rhs[i];
          if( xsp->type==TERMINAL ){
            SetAdd(newcfp->fws,xsp->index);
            break;
          }else if( xsp->type==MULTITERMINAL ){
            int k;
            for(k=0; k<xsp->nsubsym; k++){
              SetAdd(newcfp->fws, xsp->subsym[k]->index);
            }
            break;
          }else{
            SetUnion(newcfp->fws,xsp->firstset);
            if( xsp->lambda==LEMON_FALSE ) break;
          }
        }
        if( i==rp->nrhs ) Plink_add(&cfp->fplp,newcfp);
      }
    }
  }
  return;
}

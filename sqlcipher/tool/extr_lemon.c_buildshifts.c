
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {scalar_t__ type; int nsubsym; struct symbol** subsym; } ;
struct state {int ap; struct config* cfp; } ;
struct lemon {int dummy; } ;
struct config {scalar_t__ status; size_t dot; int bplp; TYPE_1__* rp; struct config* next; } ;
struct TYPE_2__ {size_t nrhs; struct symbol** rhs; } ;


 int Action_add (int *,int ,struct symbol*,char*) ;
 scalar_t__ COMPLETE ;
 struct config* Configlist_addbasis (TYPE_1__*,int) ;
 int Configlist_reset () ;
 scalar_t__ INCOMPLETE ;
 scalar_t__ MULTITERMINAL ;
 int Plink_add (int *,struct config*) ;
 int SHIFT ;
 struct state* getstate (struct lemon*) ;
 int same_symbol (struct symbol*,struct symbol*) ;

void buildshifts(struct lemon *lemp, struct state *stp)
{
  struct config *cfp;
  struct config *bcfp;
  struct config *newcfg;
  struct symbol *sp;
  struct symbol *bsp;
  struct state *newstp;



  for(cfp=stp->cfp; cfp; cfp=cfp->next) cfp->status = INCOMPLETE;


  for(cfp=stp->cfp; cfp; cfp=cfp->next){
    if( cfp->status==COMPLETE ) continue;
    if( cfp->dot>=cfp->rp->nrhs ) continue;
    Configlist_reset();
    sp = cfp->rp->rhs[cfp->dot];




    for(bcfp=cfp; bcfp; bcfp=bcfp->next){
      if( bcfp->status==COMPLETE ) continue;
      if( bcfp->dot>=bcfp->rp->nrhs ) continue;
      bsp = bcfp->rp->rhs[bcfp->dot];
      if( !same_symbol(bsp,sp) ) continue;
      bcfp->status = COMPLETE;
      newcfg = Configlist_addbasis(bcfp->rp,bcfp->dot+1);
      Plink_add(&newcfg->bplp,bcfp);
    }



    newstp = getstate(lemp);



    if( sp->type==MULTITERMINAL ){
      int i;
      for(i=0; i<sp->nsubsym; i++){
        Action_add(&stp->ap,SHIFT,sp->subsym[i],(char*)newstp);
      }
    }else{
      Action_add(&stp->ap,SHIFT,sp,(char *)newstp);
    }
  }
}

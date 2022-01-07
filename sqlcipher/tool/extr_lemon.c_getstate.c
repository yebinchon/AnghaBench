
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {struct config* bp; scalar_t__ ap; scalar_t__ statenum; struct config* cfp; } ;
struct lemon {int nstate; } ;
struct config {scalar_t__ bplp; scalar_t__ fplp; struct config* bp; } ;


 struct config* Configlist_basis () ;
 int Configlist_closure (struct lemon*) ;
 int Configlist_eat (struct config*) ;
 struct config* Configlist_return () ;
 int Configlist_sort () ;
 int Configlist_sortbasis () ;
 int MemoryCheck (struct state*) ;
 int Plink_copy (scalar_t__*,scalar_t__) ;
 int Plink_delete (scalar_t__) ;
 struct state* State_find (struct config*) ;
 int State_insert (struct state*,struct config*) ;
 struct state* State_new () ;
 int buildshifts (struct lemon*,struct state*) ;

struct state *getstate(struct lemon *lemp)
{
  struct config *cfp, *bp;
  struct state *stp;



  Configlist_sortbasis();
  bp = Configlist_basis();


  stp = State_find(bp);
  if( stp ){



    struct config *x, *y;
    for(x=bp, y=stp->bp; x && y; x=x->bp, y=y->bp){
      Plink_copy(&y->bplp,x->bplp);
      Plink_delete(x->fplp);
      x->fplp = x->bplp = 0;
    }
    cfp = Configlist_return();
    Configlist_eat(cfp);
  }else{

    Configlist_closure(lemp);
    Configlist_sort();
    cfp = Configlist_return();
    stp = State_new();
    MemoryCheck(stp);
    stp->bp = bp;
    stp->cfp = cfp;
    stp->statenum = lemp->nstate++;
    stp->ap = 0;
    State_insert(stp,stp->bp);
    buildshifts(lemp,stp);
  }
  return stp;
}

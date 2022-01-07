
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rule {int dummy; } ;
struct config {int dot; struct config* next; scalar_t__ bp; scalar_t__ bplp; scalar_t__ fplp; scalar_t__ stp; int fws; struct rule* rp; } ;


 struct config* Configtable_find (struct config*) ;
 int Configtable_insert (struct config*) ;
 int SetNew () ;
 int assert (int) ;
 struct config** currentend ;
 struct config* newconfig () ;

struct config *Configlist_add(
  struct rule *rp,
  int dot
){
  struct config *cfp, model;

  assert( currentend!=0 );
  model.rp = rp;
  model.dot = dot;
  cfp = Configtable_find(&model);
  if( cfp==0 ){
    cfp = newconfig();
    cfp->rp = rp;
    cfp->dot = dot;
    cfp->fws = SetNew();
    cfp->stp = 0;
    cfp->fplp = cfp->bplp = 0;
    cfp->next = 0;
    cfp->bp = 0;
    *currentend = cfp;
    currentend = &cfp->next;
    Configtable_insert(cfp);
  }
  return cfp;
}

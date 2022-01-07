
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* aLookahead; struct TYPE_4__* aAction; } ;
typedef TYPE_1__ acttab ;


 int free (TYPE_1__*) ;

void acttab_free(acttab *p){
  free( p->aAction );
  free( p->aLookahead );
  free( p );
}

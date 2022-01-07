
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int n; TYPE_1__* a; } ;
struct TYPE_5__ {TYPE_2__* apSubst; TYPE_2__* apDel; } ;
typedef TYPE_2__ EditDist3FromString ;


 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static void editDist3FromStringDelete(EditDist3FromString *p){
  int i;
  if( p ){
    for(i=0; i<p->n; i++){
      sqlite3_free(p->a[i].apDel);
      sqlite3_free(p->a[i].apSubst);
    }
    sqlite3_free(p);
  }
}

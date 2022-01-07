
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ xCmp; scalar_t__ pUser; int zName; } ;
typedef TYPE_1__ CollSeq ;


 int assert (int) ;
 scalar_t__ binCollFunc ;
 scalar_t__ strcmp (int ,char*) ;

int sqlite3IsBinary(const CollSeq *p){
  assert( p==0 || p->xCmp!=binCollFunc || p->pUser!=0
            || strcmp(p->zName,"BINARY")==0 );
  return p==0 || (p->xCmp==binCollFunc && p->pUser==0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nRef; int db; } ;
typedef TYPE_1__ KeyInfo ;


 int assert (int) ;
 int sqlite3DbFreeNN (int ,TYPE_1__*) ;

void sqlite3KeyInfoUnref(KeyInfo *p){
  if( p ){
    assert( p->nRef>0 );
    p->nRef--;
    if( p->nRef==0 ) sqlite3DbFreeNN(p->db, p);
  }
}

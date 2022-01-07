
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nRef; } ;
typedef TYPE_1__ KeyInfo ;


 int assert (int) ;

KeyInfo *sqlite3KeyInfoRef(KeyInfo *p){
  if( p ){
    assert( p->nRef>0 );
    p->nRef++;
  }
  return p;
}

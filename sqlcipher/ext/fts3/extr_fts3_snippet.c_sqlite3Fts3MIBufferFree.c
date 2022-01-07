
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* aRef; } ;
typedef TYPE_1__ MatchinfoBuffer ;


 int assert (int) ;
 int sqlite3_free (TYPE_1__*) ;

void sqlite3Fts3MIBufferFree(MatchinfoBuffer *p){
  if( p ){
    assert( p->aRef[0]==1 );
    p->aRef[0] = 0;
    if( p->aRef[0]==0 && p->aRef[1]==0 && p->aRef[2]==0 ){
      sqlite3_free(p);
    }
  }
}

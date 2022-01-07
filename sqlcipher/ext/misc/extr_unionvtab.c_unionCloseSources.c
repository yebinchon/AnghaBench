
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nOpen; TYPE_2__* pClosable; } ;
typedef TYPE_1__ UnionTab ;
struct TYPE_7__ {scalar_t__ db; struct TYPE_7__* pNextClosable; } ;
typedef TYPE_2__ UnionSrc ;


 int assert (scalar_t__) ;
 int sqlite3_close (scalar_t__) ;
 int unionInvokeOpenClose (TYPE_1__*,TYPE_2__*,int,int ) ;

__attribute__((used)) static void unionCloseSources(UnionTab *pTab, int nMax){
  while( pTab->pClosable && pTab->nOpen>nMax ){
    UnionSrc *p;
    UnionSrc **pp;
    for(pp=&pTab->pClosable; (*pp)->pNextClosable; pp=&(*pp)->pNextClosable);
    p = *pp;
    assert( p->db );
    sqlite3_close(p->db);
    p->db = 0;
    *pp = 0;
    pTab->nOpen--;
    unionInvokeOpenClose(pTab, p, 1, 0);
  }
}

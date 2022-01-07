
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nRef; TYPE_1__* pCache; } ;
struct TYPE_5__ {int nRefSum; } ;
typedef TYPE_2__ PgHdr ;


 int assert (int) ;
 int sqlite3PcachePageSanity (TYPE_2__*) ;

void sqlite3PcacheRef(PgHdr *p){
  assert(p->nRef>0);
  assert( sqlite3PcachePageSanity(p) );
  p->nRef++;
  p->pCache->nRefSum++;
}

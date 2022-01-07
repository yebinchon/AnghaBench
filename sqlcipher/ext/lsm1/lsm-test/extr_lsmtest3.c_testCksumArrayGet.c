
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nFirst; int nLast; int nStep; char** azCksum; } ;
typedef TYPE_1__ CksumDb ;


 int assert (int) ;

char *testCksumArrayGet(CksumDb *p, int nRow){
  int i;
  assert( nRow>=p->nFirst );
  assert( nRow<=p->nLast );
  assert( ((nRow-p->nFirst) % p->nStep)==0 );

  i = (nRow - p->nFirst) / p->nStep;
  return p->azCksum[i];
}

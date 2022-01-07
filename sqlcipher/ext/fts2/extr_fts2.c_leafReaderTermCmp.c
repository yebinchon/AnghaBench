
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nData; int pData; } ;
struct TYPE_5__ {TYPE_1__ term; } ;
typedef TYPE_2__ LeafReader ;


 int memcmp (int ,char const*,int) ;

__attribute__((used)) static int leafReaderTermCmp(LeafReader *pReader,
                             const char *pTerm, int nTerm, int isPrefix){
  int c, n = pReader->term.nData<nTerm ? pReader->term.nData : nTerm;
  if( n==0 ){
    if( pReader->term.nData>0 ) return -1;
    if(nTerm>0 ) return 1;
    return 0;
  }

  c = memcmp(pReader->term.pData, pTerm, n);
  if( c!=0 ) return c;
  if( isPrefix && n==nTerm ) return 0;
  return pReader->term.nData - nTerm;
}

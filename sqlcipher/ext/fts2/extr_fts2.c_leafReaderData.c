
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nData; } ;
struct TYPE_5__ {char const* pData; TYPE_1__ term; } ;
typedef TYPE_2__ LeafReader ;


 int assert (int) ;
 int getVarint32 (char const*,int*) ;

__attribute__((used)) static const char *leafReaderData(LeafReader *pReader){
  int n, nData;
  assert( pReader->term.nData>0 );
  n = getVarint32(pReader->pData, &nData);
  return pReader->pData+n;
}

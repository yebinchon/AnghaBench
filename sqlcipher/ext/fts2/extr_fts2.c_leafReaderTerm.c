
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nData; char const* pData; } ;
struct TYPE_5__ {TYPE_1__ term; } ;
typedef TYPE_2__ LeafReader ;


 int assert (int) ;

__attribute__((used)) static const char *leafReaderTerm(LeafReader *pReader){
  assert( pReader->term.nData>0 );
  return pReader->term.pData;
}

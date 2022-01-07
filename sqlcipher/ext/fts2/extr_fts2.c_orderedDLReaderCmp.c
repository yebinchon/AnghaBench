
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int idx; int pReader; } ;
typedef TYPE_1__ OrderedDLReader ;


 scalar_t__ dlrAtEnd (int ) ;
 scalar_t__ dlrDocid (int ) ;

__attribute__((used)) static int orderedDLReaderCmp(OrderedDLReader *r1, OrderedDLReader *r2){
  if( dlrAtEnd(r1->pReader) ){
    if( dlrAtEnd(r2->pReader) ) return 0;
    return 1;
  }
  if( dlrAtEnd(r2->pReader) ) return -1;

  if( dlrDocid(r1->pReader)<dlrDocid(r2->pReader) ) return -1;
  if( dlrDocid(r1->pReader)>dlrDocid(r2->pReader) ) return 1;


  return r2->idx-r1->idx;
}

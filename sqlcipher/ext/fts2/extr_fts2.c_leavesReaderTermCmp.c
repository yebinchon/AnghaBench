
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int leafReader; } ;
typedef TYPE_1__ LeavesReader ;


 int leafReaderTermCmp (int *,int ,int ,int ) ;
 scalar_t__ leavesReaderAtEnd (TYPE_1__*) ;
 int leavesReaderTerm (TYPE_1__*) ;
 int leavesReaderTermBytes (TYPE_1__*) ;

__attribute__((used)) static int leavesReaderTermCmp(LeavesReader *lr1, LeavesReader *lr2){
  if( leavesReaderAtEnd(lr1) ){
    if( leavesReaderAtEnd(lr2) ) return 0;
    return 1;
  }
  if( leavesReaderAtEnd(lr2) ) return -1;

  return leafReaderTermCmp(&lr1->leafReader,
                           leavesReaderTerm(lr2), leavesReaderTermBytes(lr2),
                           0);
}

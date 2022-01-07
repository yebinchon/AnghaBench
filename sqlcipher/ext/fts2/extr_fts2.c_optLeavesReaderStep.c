
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fulltext_vtab ;
struct TYPE_3__ {int reader; } ;
typedef TYPE_1__ OptLeavesReader ;


 int leavesReaderStep (int *,int *) ;

__attribute__((used)) static int optLeavesReaderStep(fulltext_vtab *v, OptLeavesReader *pReader){
  return leavesReaderStep(v, &pReader->reader);
}

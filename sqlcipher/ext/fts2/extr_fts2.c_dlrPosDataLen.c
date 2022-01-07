
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_4__ {int nElement; int pData; } ;
typedef TYPE_1__ DLReader ;


 int assert (int) ;
 int dlrAtEnd (TYPE_1__*) ;
 int getVarint (int ,int *) ;

__attribute__((used)) static int dlrPosDataLen(DLReader *pReader){
  sqlite_int64 iDummy;
  int n = getVarint(pReader->pData, &iDummy);
  assert( !dlrAtEnd(pReader) );
  return pReader->nElement-n;
}

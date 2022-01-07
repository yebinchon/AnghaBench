
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* pData; int nData; scalar_t__ iDocid; scalar_t__ nElement; int iType; } ;
typedef int DocListType ;
typedef TYPE_1__ DLReader ;


 int assert (int) ;
 int dlrStep (TYPE_1__*) ;

__attribute__((used)) static void dlrInit(DLReader *pReader, DocListType iType,
                    const char *pData, int nData){
  assert( pData!=((void*)0) && nData!=0 );
  pReader->iType = iType;
  pReader->pData = pData;
  pReader->nData = nData;
  pReader->nElement = 0;
  pReader->iDocid = 0;


  dlrStep(pReader);
}

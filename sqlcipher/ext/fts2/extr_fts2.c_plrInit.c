
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int iType; } ;
struct TYPE_8__ {scalar_t__ iEndOffset; scalar_t__ iStartOffset; scalar_t__ iPosition; scalar_t__ iColumn; int iType; int nData; int pData; } ;
typedef TYPE_1__ PLReader ;
typedef TYPE_2__ DLReader ;


 int dlrPosData (TYPE_2__*) ;
 int dlrPosDataLen (TYPE_2__*) ;
 int plrStep (TYPE_1__*) ;

__attribute__((used)) static void plrInit(PLReader *pReader, DLReader *pDLReader){
  pReader->pData = dlrPosData(pDLReader);
  pReader->nData = dlrPosDataLen(pDLReader);
  pReader->iType = pDLReader->iType;
  pReader->iColumn = 0;
  pReader->iPosition = 0;
  pReader->iStartOffset = 0;
  pReader->iEndOffset = 0;
  plrStep(pReader);
}

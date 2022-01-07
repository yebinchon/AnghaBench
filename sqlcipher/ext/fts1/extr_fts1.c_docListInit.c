
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nData; scalar_t__ iLastOffset; scalar_t__ iLastPos; scalar_t__ iLastColumn; int iType; int * pData; } ;
typedef int DocListType ;
typedef TYPE_1__ DocList ;


 int * malloc (int) ;
 int memcpy (int *,char const*,int) ;

__attribute__((used)) static void docListInit(DocList *d, DocListType iType,
                        const char *pData, int nData){
  d->nData = nData;
  if( nData>0 ){
    d->pData = malloc(nData);
    memcpy(d->pData, pData, nData);
  } else {
    d->pData = ((void*)0);
  }
  d->iType = iType;
  d->iLastColumn = 0;
  d->iLastPos = d->iLastOffset = 0;
}

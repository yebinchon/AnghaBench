
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int eType; int nMinKey; int nMaxVal; int nMinVal; void* aVal; void* aKey; int nMaxKey; } ;
typedef TYPE_1__ Datasource ;




 int assert (int) ;
 int sprintf (void*,char*,int) ;
 int testPrngString (int,void*,int) ;
 int testPrngValue (int) ;

void testDatasourceEntry(
  Datasource *p,
  int iData,
  void **ppKey, int *pnKey,
  void **ppVal, int *pnVal
){
  assert( (ppKey==0)==(pnKey==0) );
  assert( (ppVal==0)==(pnVal==0) );

  if( ppKey ){
    int nKey = 0;
    switch( p->eType ){
      case 129: {
        int nRange = (1 + p->nMaxKey - p->nMinKey);
        nKey = (int)( testPrngValue((u32)iData) % nRange ) + p->nMinKey;
        testPrngString((u32)iData, p->aKey, nKey);
        break;
      }
      case 128:
        nKey = sprintf(p->aKey, "%012d", iData);
        break;
    }
    *ppKey = p->aKey;
    *pnKey = nKey;
  }
  if( ppVal ){
    u32 nVal = testPrngValue((u32)iData)%(1+p->nMaxVal-p->nMinVal)+p->nMinVal;
    testPrngString((u32)~iData, p->aVal, (int)nVal);
    *ppVal = p->aVal;
    *pnVal = (int)nVal;
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ eType; int nMinKey; int nMinVal; int nMaxKey; int nMaxVal; char* aKey; char* aVal; } ;
struct TYPE_5__ {scalar_t__ eType; int nMaxVal; int nMinVal; int nMaxKey; int nMinKey; } ;
typedef TYPE_1__ DatasourceDefn ;
typedef TYPE_2__ Datasource ;


 int MAX (int,int ) ;
 scalar_t__ TEST_DATASOURCE_SEQUENCE ;
 scalar_t__ testMalloc (int) ;

Datasource *testDatasourceNew(const DatasourceDefn *pDefn){
  Datasource *p;
  int nMinKey;
  int nMaxKey;
  int nMinVal;
  int nMaxVal;

  if( pDefn->eType==TEST_DATASOURCE_SEQUENCE ){
    nMinKey = 128;
    nMaxKey = 128;
  }else{
    nMinKey = MAX(0, pDefn->nMinKey);
    nMaxKey = MAX(nMinKey, pDefn->nMaxKey);
  }
  nMinVal = MAX(0, pDefn->nMinVal);
  nMaxVal = MAX(nMinVal, pDefn->nMaxVal);

  p = (Datasource *)testMalloc(sizeof(Datasource) + nMaxKey + nMaxVal + 1);
  p->eType = pDefn->eType;
  p->nMinKey = nMinKey;
  p->nMinVal = nMinVal;
  p->nMaxKey = nMaxKey;
  p->nMaxVal = nMaxVal;

  p->aKey = (char *)&p[1];
  p->aVal = &p->aKey[nMaxKey];
  return p;
}

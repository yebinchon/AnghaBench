
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_cursor ;
struct TYPE_5__ {TYPE_1__* pDb; } ;
struct TYPE_4__ {int (* xCmp ) (void*,int,void*,int) ;} ;
typedef TYPE_2__ MultiCursor ;


 int LSM_OK ;
 int lsmMCursorKey (TYPE_2__*,void**,int*) ;
 int sortedKeyCompare (int (*) (void*,int,void*,int),int ,void*,int,int ,void*,int) ;

int lsm_csr_cmp(lsm_cursor *csr, const void *pKey, int nKey, int *piRes){
  MultiCursor *pCsr = (MultiCursor *)csr;
  void *pCsrkey; int nCsrkey;
  int rc;
  rc = lsmMCursorKey(pCsr, &pCsrkey, &nCsrkey);
  if( rc==LSM_OK ){
    int (*xCmp)(void *, int, void *, int) = pCsr->pDb->xCmp;
    *piRes = sortedKeyCompare(xCmp, 0, pCsrkey, nCsrkey, 0, (void *)pKey, nKey);
  }
  return rc;
}

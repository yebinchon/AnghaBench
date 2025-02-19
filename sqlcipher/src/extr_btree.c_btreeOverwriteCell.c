
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {scalar_t__ pPayload; int nLocal; } ;
struct TYPE_16__ {TYPE_1__ info; TYPE_2__* pPage; } ;
struct TYPE_15__ {int usableSize; } ;
struct TYPE_14__ {int nData; int nZero; } ;
struct TYPE_13__ {scalar_t__ aDataEnd; scalar_t__ aData; int pDbPage; TYPE_4__* pBt; } ;
typedef int Pgno ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ BtreePayload ;
typedef TYPE_4__ BtShared ;
typedef TYPE_5__ BtCursor ;


 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int btreeGetPage (TYPE_4__*,int ,TYPE_2__**,int ) ;
 int btreeOverwriteContent (TYPE_2__*,scalar_t__,TYPE_3__ const*,int,int) ;
 int get4byte (scalar_t__) ;
 int sqlite3PagerPageRefcount (int ) ;
 int sqlite3PagerUnref (int ) ;

__attribute__((used)) static int btreeOverwriteCell(BtCursor *pCur, const BtreePayload *pX){
  int iOffset;
  int nTotal = pX->nData + pX->nZero;
  int rc;
  MemPage *pPage = pCur->pPage;
  BtShared *pBt;
  Pgno ovflPgno;
  u32 ovflPageSize;

  if( pCur->info.pPayload + pCur->info.nLocal > pPage->aDataEnd ){
    return SQLITE_CORRUPT_BKPT;
  }

  rc = btreeOverwriteContent(pPage, pCur->info.pPayload, pX,
                             0, pCur->info.nLocal);
  if( rc ) return rc;
  if( pCur->info.nLocal==nTotal ) return SQLITE_OK;


  iOffset = pCur->info.nLocal;
  assert( nTotal>=0 );
  assert( iOffset>=0 );
  ovflPgno = get4byte(pCur->info.pPayload + iOffset);
  pBt = pPage->pBt;
  ovflPageSize = pBt->usableSize - 4;
  do{
    rc = btreeGetPage(pBt, ovflPgno, &pPage, 0);
    if( rc ) return rc;
    if( sqlite3PagerPageRefcount(pPage->pDbPage)!=1 ){
      rc = SQLITE_CORRUPT_BKPT;
    }else{
      if( iOffset+ovflPageSize<(u32)nTotal ){
        ovflPgno = get4byte(pPage->aData);
      }else{
        ovflPageSize = nTotal - iOffset;
      }
      rc = btreeOverwriteContent(pPage, pPage->aData+4, pX,
                                 iOffset, ovflPageSize);
    }
    sqlite3PagerUnref(pPage->pDbPage);
    if( rc ) return rc;
    iOffset += ovflPageSize;
  }while( iOffset<nTotal );
  return SQLITE_OK;
}

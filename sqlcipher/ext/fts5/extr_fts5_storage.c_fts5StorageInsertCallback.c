
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ szCol; int iCol; TYPE_1__* pStorage; } ;
struct TYPE_3__ {int * pIndex; } ;
typedef TYPE_2__ Fts5InsertCtx ;
typedef int Fts5Index ;


 int FTS5_MAX_TOKEN_SIZE ;
 int FTS5_TOKEN_COLOCATED ;
 int UNUSED_PARAM2 (int,int) ;
 int sqlite3Fts5IndexWrite (int *,int ,scalar_t__,char const*,int) ;

__attribute__((used)) static int fts5StorageInsertCallback(
  void *pContext,
  int tflags,
  const char *pToken,
  int nToken,
  int iUnused1,
  int iUnused2
){
  Fts5InsertCtx *pCtx = (Fts5InsertCtx*)pContext;
  Fts5Index *pIdx = pCtx->pStorage->pIndex;
  UNUSED_PARAM2(iUnused1, iUnused2);
  if( nToken>FTS5_MAX_TOKEN_SIZE ) nToken = FTS5_MAX_TOKEN_SIZE;
  if( (tflags & FTS5_TOKEN_COLOCATED)==0 || pCtx->szCol==0 ){
    pCtx->szCol++;
  }
  return sqlite3Fts5IndexWrite(pIdx, pCtx->iCol, pCtx->szCol-1, pToken, nToken);
}

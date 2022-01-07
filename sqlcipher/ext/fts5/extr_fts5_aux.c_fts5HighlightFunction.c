
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_8__ {int (* xColumnText ) (int *,int,int **,scalar_t__*) ;int (* xTokenize ) (int *,int *,scalar_t__,void*,int ) ;} ;
struct TYPE_7__ {char const* zOpen; char const* zClose; size_t iOff; scalar_t__ zOut; scalar_t__ nIn; int * zIn; int iter; } ;
typedef TYPE_1__ HighlightContext ;
typedef TYPE_2__ Fts5ExtensionApi ;
typedef int Fts5Context ;


 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int fts5CInstIterInit (TYPE_2__ const*,int *,int,int *) ;
 int fts5HighlightAppend (int*,TYPE_1__*,int *,scalar_t__) ;
 int fts5HighlightCb ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_free (scalar_t__) ;
 int sqlite3_result_error (int *,char const*,int) ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;
 int sqlite3_value_int (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int stub1 (int *,int,int **,scalar_t__*) ;
 int stub2 (int *,int *,scalar_t__,void*,int ) ;

__attribute__((used)) static void fts5HighlightFunction(
  const Fts5ExtensionApi *pApi,
  Fts5Context *pFts,
  sqlite3_context *pCtx,
  int nVal,
  sqlite3_value **apVal
){
  HighlightContext ctx;
  int rc;
  int iCol;

  if( nVal!=3 ){
    const char *zErr = "wrong number of arguments to function highlight()";
    sqlite3_result_error(pCtx, zErr, -1);
    return;
  }

  iCol = sqlite3_value_int(apVal[0]);
  memset(&ctx, 0, sizeof(HighlightContext));
  ctx.zOpen = (const char*)sqlite3_value_text(apVal[1]);
  ctx.zClose = (const char*)sqlite3_value_text(apVal[2]);
  rc = pApi->xColumnText(pFts, iCol, &ctx.zIn, &ctx.nIn);

  if( ctx.zIn ){
    if( rc==SQLITE_OK ){
      rc = fts5CInstIterInit(pApi, pFts, iCol, &ctx.iter);
    }

    if( rc==SQLITE_OK ){
      rc = pApi->xTokenize(pFts, ctx.zIn, ctx.nIn, (void*)&ctx,fts5HighlightCb);
    }
    fts5HighlightAppend(&rc, &ctx, &ctx.zIn[ctx.iOff], ctx.nIn - ctx.iOff);

    if( rc==SQLITE_OK ){
      sqlite3_result_text(pCtx, (const char*)ctx.zOut, -1, SQLITE_TRANSIENT);
    }
    sqlite3_free(ctx.zOut);
  }
  if( rc!=SQLITE_OK ){
    sqlite3_result_error_code(pCtx, rc);
  }
}

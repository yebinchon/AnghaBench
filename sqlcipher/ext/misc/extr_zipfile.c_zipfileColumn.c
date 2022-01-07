
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char u8 ;
typedef int u32 ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_10__ {int * pWriteFd; } ;
typedef TYPE_4__ ZipfileTab ;
struct TYPE_9__ {TYPE_2__* pVtab; } ;
struct TYPE_11__ {int iId; TYPE_3__ base; TYPE_1__* pCurrent; int * pFile; } ;
typedef TYPE_5__ ZipfileCsr ;
struct TYPE_12__ {char* zFile; int iExternalAttr; int szUncompressed; int iCompression; int szCompressed; int nFile; } ;
typedef TYPE_6__ ZipfileCDS ;
struct TYPE_8__ {int zErrMsg; } ;
struct TYPE_7__ {int mUnixTime; char* aData; int iDataOff; TYPE_6__ cds; } ;
typedef int FILE ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int SQLITE_TRANSIENT ;
 int S_IFDIR ;
 int assert (int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (int) ;
 int sqlite3_result_blob (int *,char*,int,int ) ;
 int sqlite3_result_int (int *,int) ;
 int sqlite3_result_int64 (int *,int) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_vtab_nochange (int *) ;
 int zipfileInflate (int *,char*,int,int) ;
 int zipfileReadData (int *,char*,int,int ,int *) ;

__attribute__((used)) static int zipfileColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  ZipfileCsr *pCsr = (ZipfileCsr*)cur;
  ZipfileCDS *pCDS = &pCsr->pCurrent->cds;
  int rc = SQLITE_OK;
  switch( i ){
    case 0:
      sqlite3_result_text(ctx, pCDS->zFile, -1, SQLITE_TRANSIENT);
      break;
    case 1:


      sqlite3_result_int(ctx, pCDS->iExternalAttr >> 16);
      break;
    case 2: {
      sqlite3_result_int64(ctx, pCsr->pCurrent->mUnixTime);
      break;
    }
    case 3: {
      if( sqlite3_vtab_nochange(ctx)==0 ){
        sqlite3_result_int64(ctx, pCDS->szUncompressed);
      }
      break;
    }
    case 4:
      if( sqlite3_vtab_nochange(ctx) ) break;
    case 5: {
      if( i==4 || pCDS->iCompression==0 || pCDS->iCompression==8 ){
        int sz = pCDS->szCompressed;
        int szFinal = pCDS->szUncompressed;
        if( szFinal>0 ){
          u8 *aBuf;
          u8 *aFree = 0;
          if( pCsr->pCurrent->aData ){
            aBuf = pCsr->pCurrent->aData;
          }else{
            aBuf = aFree = sqlite3_malloc64(sz);
            if( aBuf==0 ){
              rc = SQLITE_NOMEM;
            }else{
              FILE *pFile = pCsr->pFile;
              if( pFile==0 ){
                pFile = ((ZipfileTab*)(pCsr->base.pVtab))->pWriteFd;
              }
              rc = zipfileReadData(pFile, aBuf, sz, pCsr->pCurrent->iDataOff,
                  &pCsr->base.pVtab->zErrMsg
              );
            }
          }
          if( rc==SQLITE_OK ){
            if( i==5 && pCDS->iCompression ){
              zipfileInflate(ctx, aBuf, sz, szFinal);
            }else{
              sqlite3_result_blob(ctx, aBuf, sz, SQLITE_TRANSIENT);
            }
          }
          sqlite3_free(aFree);
        }else{



          u32 mode = pCDS->iExternalAttr >> 16;
          if( !(mode & S_IFDIR) && pCDS->zFile[pCDS->nFile-1]!='/' ){
            sqlite3_result_blob(ctx, "", 0, SQLITE_STATIC);
          }
        }
      }
      break;
    }
    case 6:
      sqlite3_result_int(ctx, pCDS->iCompression);
      break;
    default:
      assert( i==7 );
      sqlite3_result_int64(ctx, pCsr->iId);
      break;
  }

  return rc;
}

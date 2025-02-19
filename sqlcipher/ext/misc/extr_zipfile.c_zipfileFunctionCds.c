
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int ZipfileTab ;
struct TYPE_6__ {TYPE_1__* pCurrent; } ;
typedef TYPE_2__ ZipfileCsr ;
struct TYPE_7__ {scalar_t__ iOffset; scalar_t__ iExternalAttr; scalar_t__ iInternalAttr; scalar_t__ iDiskStart; scalar_t__ nComment; scalar_t__ nExtra; scalar_t__ nFile; scalar_t__ szUncompressed; scalar_t__ szCompressed; scalar_t__ crc32; scalar_t__ mDate; scalar_t__ mTime; scalar_t__ iCompression; scalar_t__ flags; scalar_t__ iVersionExtract; scalar_t__ iVersionMadeBy; } ;
typedef TYPE_3__ ZipfileCDS ;
struct TYPE_5__ {TYPE_3__ cds; } ;


 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 scalar_t__ sqlite3_user_data (int *) ;
 int sqlite3_value_int64 (int *) ;
 TYPE_2__* zipfileFindCursor (int *,int ) ;

__attribute__((used)) static void zipfileFunctionCds(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  ZipfileCsr *pCsr;
  ZipfileTab *pTab = (ZipfileTab*)sqlite3_user_data(context);
  assert( argc>0 );

  pCsr = zipfileFindCursor(pTab, sqlite3_value_int64(argv[0]));
  if( pCsr ){
    ZipfileCDS *p = &pCsr->pCurrent->cds;
    char *zRes = sqlite3_mprintf("{"
        "\"version-made-by\" : %u, "
        "\"version-to-extract\" : %u, "
        "\"flags\" : %u, "
        "\"compression\" : %u, "
        "\"time\" : %u, "
        "\"date\" : %u, "
        "\"crc32\" : %u, "
        "\"compressed-size\" : %u, "
        "\"uncompressed-size\" : %u, "
        "\"file-name-length\" : %u, "
        "\"extra-field-length\" : %u, "
        "\"file-comment-length\" : %u, "
        "\"disk-number-start\" : %u, "
        "\"internal-attr\" : %u, "
        "\"external-attr\" : %u, "
        "\"offset\" : %u }",
        (u32)p->iVersionMadeBy, (u32)p->iVersionExtract,
        (u32)p->flags, (u32)p->iCompression,
        (u32)p->mTime, (u32)p->mDate,
        (u32)p->crc32, (u32)p->szCompressed,
        (u32)p->szUncompressed, (u32)p->nFile,
        (u32)p->nExtra, (u32)p->nComment,
        (u32)p->iDiskStart, (u32)p->iInternalAttr,
        (u32)p->iExternalAttr, (u32)p->iOffset
    );

    if( zRes==0 ){
      sqlite3_result_error_nomem(context);
    }else{
      sqlite3_result_text(context, zRes, -1, SQLITE_TRANSIENT);
      sqlite3_free(zRes);
    }
  }
}

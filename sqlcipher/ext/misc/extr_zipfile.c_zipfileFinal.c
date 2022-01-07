
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef void* u16 ;
typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3_context ;
typedef int eocd ;
struct TYPE_9__ {size_t nSize; size_t iOffset; void* nEntryTotal; void* nEntry; } ;
typedef TYPE_3__ ZipfileEOCD ;
struct TYPE_8__ {size_t n; int a; } ;
struct TYPE_7__ {size_t n; int a; } ;
struct TYPE_10__ {scalar_t__ nEntry; TYPE_2__ cds; TYPE_1__ body; } ;
typedef TYPE_4__ ZipfileCtx ;


 scalar_t__ ZIPFILE_EOCD_FIXED_SZ ;
 int memcpy (int *,int ,size_t) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_free (int ) ;
 scalar_t__ sqlite3_malloc64 (scalar_t__) ;
 int sqlite3_result_blob (int *,int *,int,int ) ;
 int sqlite3_result_error_nomem (int *) ;
 int zipfileFree ;
 int zipfileSerializeEOCD (TYPE_3__*,int *) ;

void zipfileFinal(sqlite3_context *pCtx){
  ZipfileCtx *p;
  ZipfileEOCD eocd;
  sqlite3_int64 nZip;
  u8 *aZip;

  p = (ZipfileCtx*)sqlite3_aggregate_context(pCtx, sizeof(ZipfileCtx));
  if( p==0 ) return;
  if( p->nEntry>0 ){
    memset(&eocd, 0, sizeof(eocd));
    eocd.nEntry = (u16)p->nEntry;
    eocd.nEntryTotal = (u16)p->nEntry;
    eocd.nSize = p->cds.n;
    eocd.iOffset = p->body.n;

    nZip = p->body.n + p->cds.n + ZIPFILE_EOCD_FIXED_SZ;
    aZip = (u8*)sqlite3_malloc64(nZip);
    if( aZip==0 ){
      sqlite3_result_error_nomem(pCtx);
    }else{
      memcpy(aZip, p->body.a, p->body.n);
      memcpy(&aZip[p->body.n], p->cds.a, p->cds.n);
      zipfileSerializeEOCD(&eocd, &aZip[p->body.n + p->cds.n]);
      sqlite3_result_blob(pCtx, aZip, (int)nZip, zipfileFree);
    }
  }

  sqlite3_free(p->body.a);
  sqlite3_free(p->cds.a);
}

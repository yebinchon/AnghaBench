
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int v ;
typedef void u8 ;
typedef int u32 ;
struct TYPE_6__ {scalar_t__ pVtab; } ;
typedef TYPE_1__ sqlite3_vtab_cursor ;
typedef scalar_t__ sqlite3_uint64 ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
struct TYPE_7__ {scalar_t__ keyType; int nVal; } ;
typedef TYPE_2__ lsm1_vtab ;
struct TYPE_8__ {void* zData; int* aiOfst; int* aiLen; int* aeType; int pLsmCur; } ;
typedef TYPE_3__ lsm1_cursor ;


 scalar_t__ LSM_OK ;



 int SQLITE_OK ;

 int SQLITE_TRANSIENT ;
 scalar_t__ lsm1DecodeValues (TYPE_3__*) ;
 int lsm1GetSignedVarint64 (void const*,int,int *) ;
 int lsm1GetVarint64 (unsigned char const*,int,scalar_t__*) ;
 scalar_t__ lsm_csr_key (int ,void const**,int*) ;
 scalar_t__ lsm_csr_value (int ,void const**,int*) ;
 int memcpy (double*,void const*,int) ;
 int sqlite3_result_blob (int *,void const*,int,int ) ;
 int sqlite3_result_double (int *,double) ;
 int sqlite3_result_int (int *,int) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;

__attribute__((used)) static int lsm1Column(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  lsm1_cursor *pCur = (lsm1_cursor*)cur;
  lsm1_vtab *pTab = (lsm1_vtab*)(cur->pVtab);
  if( i==0 ){

    const void *pVal;
    int nVal;
    if( lsm_csr_key(pCur->pLsmCur, &pVal, &nVal)==LSM_OK ){
      if( pTab->keyType==131 ){
        sqlite3_result_blob(ctx, pVal, nVal, SQLITE_TRANSIENT);
      }else if( pTab->keyType==128 ){
        sqlite3_result_text(ctx,(const char*)pVal, nVal, SQLITE_TRANSIENT);
      }else{
        const unsigned char *z = (const unsigned char*)pVal;
        sqlite3_uint64 v1;
        lsm1GetVarint64(z, nVal, &v1);
        sqlite3_result_int64(ctx, (sqlite3_int64)v1);
      }
    }
  }else if( i>pTab->nVal ){
    if( i==pTab->nVal+2 ){
      const void *pVal;
      int nVal;
      if( lsm_csr_key(pCur->pLsmCur, &pVal, &nVal)==LSM_OK ){
        sqlite3_result_blob(ctx, pVal, nVal, SQLITE_TRANSIENT);
      }
    }else if( i==pTab->nVal+3 ){
      const void *pVal;
      int nVal;
      if( lsm_csr_value(pCur->pLsmCur, &pVal, &nVal)==LSM_OK ){
        sqlite3_result_blob(ctx, pVal, nVal, SQLITE_TRANSIENT);
      }
    }
  }else if( lsm1DecodeValues(pCur) ){

    const u8 *zData;
    u32 nData;
    i--;
    zData = pCur->zData + pCur->aiOfst[i];
    nData = pCur->aiLen[i];
    switch( pCur->aeType[i] ){
      case 0: {
        sqlite3_result_int(ctx, pCur->aiOfst[i]);
        break;
      }
      case 129: {
        sqlite3_int64 v;
        lsm1GetSignedVarint64(zData, nData, &v);
        sqlite3_result_int64(ctx, v);
        break;
      }
      case 130: {
        double v;
        if( nData==sizeof(v) ){
          memcpy(&v, zData, sizeof(v));
          sqlite3_result_double(ctx, v);
        }
        break;
      }
      case 128: {
        sqlite3_result_text(ctx, (const char*)zData, nData, SQLITE_TRANSIENT);
        break;
      }
      case 131: {
        sqlite3_result_blob(ctx, zData, nData, SQLITE_TRANSIENT);
        break;
      }
      default: {

      }
    }
  }
  return SQLITE_OK;
}

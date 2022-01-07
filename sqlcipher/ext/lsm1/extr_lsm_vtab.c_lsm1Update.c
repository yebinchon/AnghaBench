
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int val ;
typedef int u8 ;
typedef int sqlite_int64 ;
typedef int sqlite3_vtab ;
typedef int sqlite3_value ;
typedef int sqlite3_int64 ;
typedef int r ;
struct TYPE_6__ {int nVal; int pDb; int keyType; } ;
typedef TYPE_1__ lsm1_vtab ;
struct TYPE_7__ {int a; int n; scalar_t__ errNoMem; } ;
typedef TYPE_2__ lsm1_vblob ;


 int LSM_OK ;

 int SQLITE_ERROR ;


 int SQLITE_NOMEM ;

 int SQLITE_OK ;

 int lsm1KeyFromValue (int ,int *,unsigned char*,int const**,int*) ;
 int lsm1PutSignedVarint64 (unsigned char*,int) ;
 int lsm1VblobAppend (TYPE_2__*,...) ;
 int lsm1VblobAppendVarint (TYPE_2__*,scalar_t__ const) ;
 int lsm_delete (int ,int const*,int) ;
 int lsm_insert (int ,int const*,int,int ,int ) ;
 scalar_t__ memcmp (int const*,int const*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3_free (int ) ;
 int* sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 double sqlite3_value_double (int *) ;
 int sqlite3_value_int64 (int *) ;
 int* sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

int lsm1Update(
  sqlite3_vtab *pVTab,
  int argc,
  sqlite3_value **argv,
  sqlite_int64 *pRowid
){
  lsm1_vtab *p = (lsm1_vtab*)pVTab;
  int nKey, nKey2;
  int i;
  int rc = LSM_OK;
  const u8 *pKey, *pKey2;
  unsigned char aKey[16];
  unsigned char pSpace[16];
  lsm1_vblob val;

  if( argc==1 ){

    lsm1KeyFromValue(p->keyType, argv[0], aKey, &pKey, &nKey);
    lsm_delete(p->pDb, pKey, nKey);
    return SQLITE_OK;
  }

  if( sqlite3_value_type(argv[0])!=129 ){

    lsm1KeyFromValue(p->keyType, argv[0], aKey, &pKey, &nKey);
    lsm1KeyFromValue(p->keyType, argv[1], pSpace, &pKey2, &nKey2);
    if( nKey!=nKey2 || memcmp(pKey, pKey2, nKey)!=0 ){

      lsm_delete(p->pDb, pKey, nKey);
    }

  }




  if( sqlite3_value_type(argv[3+p->nVal])!=129 ){
    return SQLITE_OK;
  }
  lsm1KeyFromValue(p->keyType, argv[2], aKey, &pKey, &nKey);
  memset(&val, 0, sizeof(val));
  for(i=0; i<p->nVal; i++){
    sqlite3_value *pArg = argv[3+i];
    u8 eType = sqlite3_value_type(pArg);
    switch( eType ){
      case 129: {
        lsm1VblobAppendVarint(&val, 129);
        break;
      }
      case 130: {
        sqlite3_int64 v = sqlite3_value_int64(pArg);
        if( v>=0 && v<=240/6 ){
          lsm1VblobAppendVarint(&val, v*6);
        }else{
          int n = lsm1PutSignedVarint64(pSpace, v);
          lsm1VblobAppendVarint(&val, 130 + n*6);
          lsm1VblobAppend(&val, pSpace, n);
        }
        break;
      }
      case 131: {
        double r = sqlite3_value_double(pArg);
        lsm1VblobAppendVarint(&val, 131 + 8*6);
        lsm1VblobAppend(&val, (u8*)&r, sizeof(r));
        break;
      }
      case 132: {
        int n = sqlite3_value_bytes(pArg);
        lsm1VblobAppendVarint(&val, n*6 + 132);
        lsm1VblobAppend(&val, sqlite3_value_blob(pArg), n);
        break;
      }
      case 128: {
        int n = sqlite3_value_bytes(pArg);
        lsm1VblobAppendVarint(&val, n*6 + 128);
        lsm1VblobAppend(&val, sqlite3_value_text(pArg), n);
        break;
      }
    }
  }
  if( val.errNoMem ){
    return SQLITE_NOMEM;
  }
  rc = lsm_insert(p->pDb, pKey, nKey, val.a, val.n);
  sqlite3_free(val.a);
  return rc==LSM_OK ? SQLITE_OK : SQLITE_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_11__ {int* aLimit; int mutex; } ;
struct TYPE_10__ {char* z; char* zMalloc; void (* xDel ) (void*) ;int n; int flags; scalar_t__ enc; TYPE_8__* db; int szMalloc; } ;
typedef TYPE_1__ Mem ;


 scalar_t__ MAX (int,int) ;
 int MEM_Blob ;
 int MEM_Dyn ;
 int MEM_Static ;
 int MEM_Str ;
 int MEM_Term ;
 void SQLITE_DYNAMIC (void*) ;
 size_t SQLITE_LIMIT_LENGTH ;
 int SQLITE_MAX_LENGTH ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 void SQLITE_STATIC (void*) ;
 int SQLITE_TOOBIG ;
 void SQLITE_TRANSIENT (void*) ;
 scalar_t__ SQLITE_UTF8 ;
 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 int sqlite3DbMallocSize (TYPE_8__*,char*) ;
 int sqlite3ErrorToParser (TYPE_8__*,int) ;
 scalar_t__ sqlite3VdbeMemClearAndResize (TYPE_1__*,int) ;
 scalar_t__ sqlite3VdbeMemHandleBom (TYPE_1__*) ;
 int sqlite3VdbeMemIsRowSet (TYPE_1__*) ;
 int sqlite3VdbeMemRelease (TYPE_1__*) ;
 int sqlite3VdbeMemSetNull (TYPE_1__*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;
 scalar_t__ strlen (char const*) ;
 int testcase (int) ;

int sqlite3VdbeMemSetStr(
  Mem *pMem,
  const char *z,
  int n,
  u8 enc,
  void (*xDel)(void*)
){
  int nByte = n;
  int iLimit;
  u16 flags = 0;

  assert( pMem->db==0 || sqlite3_mutex_held(pMem->db->mutex) );
  assert( !sqlite3VdbeMemIsRowSet(pMem) );


  if( !z ){
    sqlite3VdbeMemSetNull(pMem);
    return SQLITE_OK;
  }

  if( pMem->db ){
    iLimit = pMem->db->aLimit[SQLITE_LIMIT_LENGTH];
  }else{
    iLimit = SQLITE_MAX_LENGTH;
  }
  flags = (enc==0?MEM_Blob:MEM_Str);
  if( nByte<0 ){
    assert( enc!=0 );
    if( enc==SQLITE_UTF8 ){
      nByte = 0x7fffffff & (int)strlen(z);
    }else{
      for(nByte=0; nByte<=iLimit && (z[nByte] | z[nByte+1]); nByte+=2){}
    }
    flags |= MEM_Term;
  }





  if( xDel==SQLITE_TRANSIENT ){
    u32 nAlloc = nByte;
    if( flags&MEM_Term ){
      nAlloc += (enc==SQLITE_UTF8?1:2);
    }
    if( nByte>iLimit ){
      return sqlite3ErrorToParser(pMem->db, SQLITE_TOOBIG);
    }
    testcase( nAlloc==0 );
    testcase( nAlloc==31 );
    testcase( nAlloc==32 );
    if( sqlite3VdbeMemClearAndResize(pMem, (int)MAX(nAlloc,32)) ){
      return SQLITE_NOMEM_BKPT;
    }
    memcpy(pMem->z, z, nAlloc);
  }else{
    sqlite3VdbeMemRelease(pMem);
    pMem->z = (char *)z;
    if( xDel==SQLITE_DYNAMIC ){
      pMem->zMalloc = pMem->z;
      pMem->szMalloc = sqlite3DbMallocSize(pMem->db, pMem->zMalloc);
    }else{
      pMem->xDel = xDel;
      flags |= ((xDel==SQLITE_STATIC)?MEM_Static:MEM_Dyn);
    }
  }

  pMem->n = nByte;
  pMem->flags = flags;
  pMem->enc = (enc==0 ? SQLITE_UTF8 : enc);


  if( pMem->enc!=SQLITE_UTF8 && sqlite3VdbeMemHandleBom(pMem) ){
    return SQLITE_NOMEM_BKPT;
  }


  if( nByte>iLimit ){
    return SQLITE_TOOBIG;
  }

  return SQLITE_OK;
}

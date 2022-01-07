
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {int aCollSeq; scalar_t__ nVdbeActive; int mutex; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_11__ {int (* xCmp ) (void*,int,void const*,int,void const*) ;int enc; void (* xDel ) (void*) ;void* pUser; } ;
typedef TYPE_2__ CollSeq ;


 int SQLITE_BUSY ;
 int SQLITE_MISUSE_BKPT ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int SQLITE_UTF16 ;
 int SQLITE_UTF16BE ;
 int SQLITE_UTF16NATIVE ;
 int SQLITE_UTF16_ALIGNED ;
 int SQLITE_UTF8 ;
 int assert (int ) ;
 int sqlite3Error (TYPE_1__*,int) ;
 int sqlite3ErrorWithMsg (TYPE_1__*,int,char*) ;
 int sqlite3ExpirePreparedStatements (TYPE_1__*,int ) ;
 TYPE_2__* sqlite3FindCollSeq (TYPE_1__*,int,char const*,int) ;
 TYPE_2__* sqlite3HashFind (int *,char const*) ;
 int sqlite3_mutex_held (int ) ;
 void stub1 (void*) ;
 int testcase (int) ;

__attribute__((used)) static int createCollation(
  sqlite3* db,
  const char *zName,
  u8 enc,
  void* pCtx,
  int(*xCompare)(void*,int,const void*,int,const void*),
  void(*xDel)(void*)
){
  CollSeq *pColl;
  int enc2;

  assert( sqlite3_mutex_held(db->mutex) );





  enc2 = enc;
  testcase( enc2==SQLITE_UTF16 );
  testcase( enc2==SQLITE_UTF16_ALIGNED );
  if( enc2==SQLITE_UTF16 || enc2==SQLITE_UTF16_ALIGNED ){
    enc2 = SQLITE_UTF16NATIVE;
  }
  if( enc2<SQLITE_UTF8 || enc2>SQLITE_UTF16BE ){
    return SQLITE_MISUSE_BKPT;
  }





  pColl = sqlite3FindCollSeq(db, (u8)enc2, zName, 0);
  if( pColl && pColl->xCmp ){
    if( db->nVdbeActive ){
      sqlite3ErrorWithMsg(db, SQLITE_BUSY,
        "unable to delete/modify collation sequence due to active statements");
      return SQLITE_BUSY;
    }
    sqlite3ExpirePreparedStatements(db, 0);







    if( (pColl->enc & ~SQLITE_UTF16_ALIGNED)==enc2 ){
      CollSeq *aColl = sqlite3HashFind(&db->aCollSeq, zName);
      int j;
      for(j=0; j<3; j++){
        CollSeq *p = &aColl[j];
        if( p->enc==pColl->enc ){
          if( p->xDel ){
            p->xDel(p->pUser);
          }
          p->xCmp = 0;
        }
      }
    }
  }

  pColl = sqlite3FindCollSeq(db, (u8)enc2, zName, 1);
  if( pColl==0 ) return SQLITE_NOMEM_BKPT;
  pColl->xCmp = xCompare;
  pColl->pUser = pCtx;
  pColl->xDel = xDel;
  pColl->enc = (u8)(enc2 | (enc & SQLITE_UTF16_ALIGNED));
  sqlite3Error(db, SQLITE_OK);
  return SQLITE_OK;
}

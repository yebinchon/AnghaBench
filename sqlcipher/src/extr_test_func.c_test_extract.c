
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u64 ;
typedef int u32 ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;
typedef int mem ;
struct TYPE_5__ {int zMalloc; scalar_t__ szMalloc; int enc; int * db; } ;
typedef TYPE_1__ Mem ;


 int ENC (int *) ;
 int assert (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3DbFree (int *,int ) ;
 int sqlite3GetVarint (int *,size_t*) ;
 int sqlite3VdbeSerialGet (int *,int ,TYPE_1__*) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_result_value (int *,TYPE_1__*) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_int (int *) ;

__attribute__((used)) static void test_extract(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3 *db = sqlite3_context_db_handle(context);
  u8 *pRec;
  u8 *pEndHdr;
  u8 *pHdr;
  u8 *pBody;
  u64 nHdr;
  int iIdx;
  int iCurrent = 0;

  assert( argc==2 );
  pRec = (u8*)sqlite3_value_blob(argv[0]);
  iIdx = sqlite3_value_int(argv[1]);

  pHdr = pRec + sqlite3GetVarint(pRec, &nHdr);
  pBody = pEndHdr = &pRec[nHdr];

  for(iCurrent=0; pHdr<pEndHdr && iCurrent<=iIdx; iCurrent++){
    u64 iSerialType;
    Mem mem;

    memset(&mem, 0, sizeof(mem));
    mem.db = db;
    mem.enc = ENC(db);
    pHdr += sqlite3GetVarint(pHdr, &iSerialType);
    pBody += sqlite3VdbeSerialGet(pBody, (u32)iSerialType, &mem);

    if( iCurrent==iIdx ){
      sqlite3_result_value(context, &mem);
    }

    if( mem.szMalloc ) sqlite3DbFree(db, mem.zMalloc);
  }
}

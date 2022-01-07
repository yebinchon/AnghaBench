
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u64 ;
typedef int u32 ;
struct TYPE_12__ {int zMalloc; scalar_t__ szMalloc; int enc; int * db; } ;
typedef TYPE_1__ sqlite3_value ;
typedef int sqlite3_context ;
typedef int sqlite3 ;
typedef int mem ;
typedef int Tcl_Obj ;
typedef TYPE_1__ Mem ;


 int ENC (int *) ;





 int SQLITE_TRANSIENT ;
 int Tcl_AppendStringsToObj (int *,char*,int ) ;
 int Tcl_DecrRefCount (int *) ;
 int Tcl_GetString (int *) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int ,int *,int *) ;
 int * Tcl_NewDoubleObj (int ) ;
 int * Tcl_NewObj () ;
 int * Tcl_NewStringObj (char const*,int) ;
 int * Tcl_NewWideIntObj (int ) ;
 int assert (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3DbFree (int *,int ) ;
 int sqlite3GetVarint (int*,size_t*) ;
 int sqlite3VdbeSerialGet (int*,int ,TYPE_1__*) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_result_text (int *,int ,int,int ) ;
 scalar_t__ sqlite3_value_blob (TYPE_1__*) ;
 int sqlite3_value_bytes (TYPE_1__*) ;
 int sqlite3_value_double (TYPE_1__*) ;
 int sqlite3_value_int64 (TYPE_1__*) ;
 scalar_t__ sqlite3_value_text (TYPE_1__*) ;
 int sqlite3_value_type (TYPE_1__*) ;

__attribute__((used)) static void test_decode(
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
  Tcl_Obj *pRet;

  pRet = Tcl_NewObj();
  Tcl_IncrRefCount(pRet);

  assert( argc==1 );
  pRec = (u8*)sqlite3_value_blob(argv[0]);

  pHdr = pRec + sqlite3GetVarint(pRec, &nHdr);
  pBody = pEndHdr = &pRec[nHdr];
  while( pHdr<pEndHdr ){
    Tcl_Obj *pVal = 0;
    u64 iSerialType;
    Mem mem;

    memset(&mem, 0, sizeof(mem));
    mem.db = db;
    mem.enc = ENC(db);
    pHdr += sqlite3GetVarint(pHdr, &iSerialType);
    pBody += sqlite3VdbeSerialGet(pBody, (u32)iSerialType, &mem);

    switch( sqlite3_value_type(&mem) ){
      case 128:
        pVal = Tcl_NewStringObj((const char*)sqlite3_value_text(&mem), -1);
        break;

      case 132: {
        char hexdigit[] = {
          '0', '1', '2', '3', '4', '5', '6', '7',
          '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'
        };
        int n = sqlite3_value_bytes(&mem);
        u8 *z = (u8*)sqlite3_value_blob(&mem);
        int i;
        pVal = Tcl_NewStringObj("x'", -1);
        for(i=0; i<n; i++){
          char hex[3];
          hex[0] = hexdigit[((z[i] >> 4) & 0x0F)];
          hex[1] = hexdigit[(z[i] & 0x0F)];
          hex[2] = '\0';
          Tcl_AppendStringsToObj(pVal, hex, 0);
        }
        Tcl_AppendStringsToObj(pVal, "'", 0);
        break;
      }

      case 131:
        pVal = Tcl_NewDoubleObj(sqlite3_value_double(&mem));
        break;

      case 130:
        pVal = Tcl_NewWideIntObj(sqlite3_value_int64(&mem));
        break;

      case 129:
        pVal = Tcl_NewStringObj("NULL", -1);
        break;

      default:
        assert( 0 );
    }

    Tcl_ListObjAppendElement(0, pRet, pVal);

    if( mem.szMalloc ){
      sqlite3DbFree(db, mem.zMalloc);
    }
  }

  sqlite3_result_text(context, Tcl_GetString(pRet), -1, SQLITE_TRANSIENT);
  Tcl_DecrRefCount(pRet);
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  size_t u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_12__ {int /*<<< orphan*/  zMalloc; scalar_t__ szMalloc; int /*<<< orphan*/  enc; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  mem ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  TYPE_1__ Mem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  SQLITE_BLOB 132 
#define  SQLITE_FLOAT 131 
#define  SQLITE_INTEGER 130 
#define  SQLITE_NULL 129 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int*,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 
 int FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 scalar_t__ FUNC21 (TYPE_1__*) ; 
 int FUNC22 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC23(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3 *db = FUNC15(context);
  u8 *pRec;
  u8 *pEndHdr;                    /* Points to one byte past record header */
  u8 *pHdr;                       /* Current point in record header */
  u8 *pBody;                      /* Current point in record data */
  u64 nHdr;                       /* Bytes in record header */
  Tcl_Obj *pRet;                  /* Return value */

  pRet = FUNC7();
  FUNC4(pRet);

  FUNC10( argc==1 );
  pRec = (u8*)FUNC17(argv[0]);

  pHdr = pRec + FUNC13(pRec, &nHdr);
  pBody = pEndHdr = &pRec[nHdr];
  while( pHdr<pEndHdr ){
    Tcl_Obj *pVal = 0;
    u64 iSerialType;
    Mem mem;

    FUNC11(&mem, 0, sizeof(mem));
    mem.db = db;
    mem.enc = FUNC0(db);
    pHdr += FUNC13(pHdr, &iSerialType);
    pBody += FUNC14(pBody, (u32)iSerialType, &mem);

    switch( FUNC22(&mem) ){
      case SQLITE_TEXT:
        pVal = FUNC8((const char*)FUNC21(&mem), -1);
        break;

      case SQLITE_BLOB: {
        char hexdigit[] = {
          '0', '1', '2', '3', '4', '5', '6', '7',
          '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'
        };
        int n = FUNC18(&mem);
        u8 *z = (u8*)FUNC17(&mem);
        int i;
        pVal = FUNC8("x'", -1);
        for(i=0; i<n; i++){
          char hex[3];
          hex[0] = hexdigit[((z[i] >> 4) & 0x0F)];
          hex[1] = hexdigit[(z[i] & 0x0F)];
          hex[2] = '\0';
          FUNC1(pVal, hex, 0);
        }
        FUNC1(pVal, "'", 0);
        break;
      }

      case SQLITE_FLOAT:
        pVal = FUNC6(FUNC19(&mem));
        break;

      case SQLITE_INTEGER:
        pVal = FUNC9(FUNC20(&mem));
        break;

      case SQLITE_NULL:
        pVal = FUNC8("NULL", -1);
        break;

      default:
        FUNC10( 0 );
    }

    FUNC5(0, pRet, pVal);

    if( mem.szMalloc ){
      FUNC12(db, mem.zMalloc);
    }
  }

  FUNC16(context, FUNC3(pRet), -1, SQLITE_TRANSIENT);
  FUNC2(pRet);
}
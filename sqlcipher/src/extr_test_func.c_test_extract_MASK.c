#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  mem ;
struct TYPE_5__ {int /*<<< orphan*/  zMalloc; scalar_t__ szMalloc; int /*<<< orphan*/  enc; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ Mem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3 *db = FUNC6(context);
  u8 *pRec;
  u8 *pEndHdr;                    /* Points to one byte past record header */
  u8 *pHdr;                       /* Current point in record header */
  u8 *pBody;                      /* Current point in record data */
  u64 nHdr;                       /* Bytes in record header */
  int iIdx;                       /* Required field */
  int iCurrent = 0;               /* Current field */

  FUNC1( argc==2 );
  pRec = (u8*)FUNC8(argv[0]);
  iIdx = FUNC9(argv[1]);

  pHdr = pRec + FUNC4(pRec, &nHdr);
  pBody = pEndHdr = &pRec[nHdr];

  for(iCurrent=0; pHdr<pEndHdr && iCurrent<=iIdx; iCurrent++){
    u64 iSerialType;
    Mem mem;

    FUNC2(&mem, 0, sizeof(mem));
    mem.db = db;
    mem.enc = FUNC0(db);
    pHdr += FUNC4(pHdr, &iSerialType);
    pBody += FUNC5(pBody, (u32)iSerialType, &mem);

    if( iCurrent==iIdx ){
      FUNC7(context, &mem);
    }

    if( mem.szMalloc ) FUNC3(db, mem.zMalloc);
  }
}
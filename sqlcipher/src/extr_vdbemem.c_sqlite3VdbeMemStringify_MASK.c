#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_10__ {int /*<<< orphan*/  r; int /*<<< orphan*/  i; } ;
struct TYPE_11__ {int flags; scalar_t__ enc; int /*<<< orphan*/  z; int /*<<< orphan*/  n; TYPE_2__ u; TYPE_1__* db; } ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ Mem ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int MEM_Blob ; 
 int MEM_Int ; 
 int MEM_Real ; 
 int MEM_Str ; 
 int MEM_Term ; 
 int MEM_Zero ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int const,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC8(Mem *pMem, u8 enc, u8 bForce){
  int fg = pMem->flags;
  const int nByte = 32;

  FUNC1( pMem->db==0 || FUNC6(pMem->db->mutex) );
  FUNC1( !(fg&MEM_Zero) );
  FUNC1( !(fg&(MEM_Str|MEM_Blob)) );
  FUNC1( fg&(MEM_Int|MEM_Real) );
  FUNC1( !FUNC5(pMem) );
  FUNC1( FUNC0(pMem) );


  if( FUNC4(pMem, nByte) ){
    pMem->enc = 0;
    return SQLITE_NOMEM_BKPT;
  }

  /* For a Real or Integer, use sqlite3_snprintf() to produce the UTF-8
  ** string representation of the value. Then, if the required encoding
  ** is UTF-16le or UTF-16be do a translation.
  ** 
  ** FIX ME: It would be better if sqlite3_snprintf() could do UTF-16.
  */
  if( fg & MEM_Int ){
    FUNC7(nByte, pMem->z, "%lld", pMem->u.i);
  }else{
    FUNC1( fg & MEM_Real );
    FUNC7(nByte, pMem->z, "%!.15g", pMem->u.r);
  }
  FUNC1( pMem->z!=0 );
  pMem->n = FUNC2(pMem->z);
  pMem->enc = SQLITE_UTF8;
  pMem->flags |= MEM_Str|MEM_Term;
  if( bForce ) pMem->flags &= ~(MEM_Int|MEM_Real);
  FUNC3(pMem, enc);
  return SQLITE_OK;
}
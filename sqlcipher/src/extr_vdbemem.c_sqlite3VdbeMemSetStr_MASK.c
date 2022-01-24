#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_11__ {int* aLimit; int /*<<< orphan*/  mutex; } ;
struct TYPE_10__ {char* z; char* zMalloc; void (* xDel ) (void*) ;int n; int flags; scalar_t__ enc; TYPE_8__* db; int /*<<< orphan*/  szMalloc; } ;
typedef  TYPE_1__ Mem ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int MEM_Blob ; 
 int MEM_Dyn ; 
 int MEM_Static ; 
 int MEM_Str ; 
 int MEM_Term ; 
 void FUNC1 (void*) ; 
 size_t SQLITE_LIMIT_LENGTH ; 
 int SQLITE_MAX_LENGTH ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 void FUNC2 (void*) ; 
 int SQLITE_TOOBIG ; 
 void FUNC3 (void*) ; 
 scalar_t__ SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,char*) ; 
 int FUNC7 (TYPE_8__*,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

int FUNC16(
  Mem *pMem,          /* Memory cell to set to string value */
  const char *z,      /* String pointer */
  int n,              /* Bytes in string, or negative */
  u8 enc,             /* Encoding of z.  0 for BLOBs */
  void (*xDel)(void*) /* Destructor function */
){
  int nByte = n;      /* New value for pMem->n */
  int iLimit;         /* Maximum allowed string or blob size */
  u16 flags = 0;      /* New value for pMem->flags */

  FUNC4( pMem->db==0 || FUNC13(pMem->db->mutex) );
  FUNC4( !FUNC10(pMem) );

  /* If z is a NULL pointer, set pMem to contain an SQL NULL. */
  if( !z ){
    FUNC12(pMem);
    return SQLITE_OK;
  }

  if( pMem->db ){
    iLimit = pMem->db->aLimit[SQLITE_LIMIT_LENGTH];
  }else{
    iLimit = SQLITE_MAX_LENGTH;
  }
  flags = (enc==0?MEM_Blob:MEM_Str);
  if( nByte<0 ){
    FUNC4( enc!=0 );
    if( enc==SQLITE_UTF8 ){
      nByte = 0x7fffffff & (int)FUNC14(z);
    }else{
      for(nByte=0; nByte<=iLimit && (z[nByte] | z[nByte+1]); nByte+=2){}
    }
    flags |= MEM_Term;
  }

  /* The following block sets the new values of Mem.z and Mem.xDel. It
  ** also sets a flag in local variable "flags" to indicate the memory
  ** management (one of MEM_Dyn or MEM_Static).
  */
  if( xDel==SQLITE_TRANSIENT ){
    u32 nAlloc = nByte;
    if( flags&MEM_Term ){
      nAlloc += (enc==SQLITE_UTF8?1:2);
    }
    if( nByte>iLimit ){
      return FUNC7(pMem->db, SQLITE_TOOBIG);
    }
    FUNC15( nAlloc==0 );
    FUNC15( nAlloc==31 );
    FUNC15( nAlloc==32 );
    if( FUNC8(pMem, (int)FUNC0(nAlloc,32)) ){
      return SQLITE_NOMEM_BKPT;
    }
    FUNC5(pMem->z, z, nAlloc);
  }else{
    FUNC11(pMem);
    pMem->z = (char *)z;
    if( xDel==SQLITE_DYNAMIC ){
      pMem->zMalloc = pMem->z;
      pMem->szMalloc = FUNC6(pMem->db, pMem->zMalloc);
    }else{
      pMem->xDel = xDel;
      flags |= ((xDel==SQLITE_STATIC)?MEM_Static:MEM_Dyn);
    }
  }

  pMem->n = nByte;
  pMem->flags = flags;
  pMem->enc = (enc==0 ? SQLITE_UTF8 : enc);

#ifndef SQLITE_OMIT_UTF16
  if( pMem->enc!=SQLITE_UTF8 && FUNC9(pMem) ){
    return SQLITE_NOMEM_BKPT;
  }
#endif

  if( nByte>iLimit ){
    return SQLITE_TOOBIG;
  }

  return SQLITE_OK;
}
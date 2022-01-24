#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_10__ {int flags; TYPE_1__* db; } ;
struct TYPE_9__ {int /*<<< orphan*/  mallocFailed; } ;
typedef  TYPE_2__ Mem ;

/* Variables and functions */
 int MEM_Blob ; 
 int MEM_Int ; 
 int MEM_Null ; 
 int MEM_Real ; 
 int MEM_Str ; 
 int MEM_TypeMask ; 
 int MEM_Zero ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
#define  SQLITE_AFF_BLOB 131 
#define  SQLITE_AFF_INTEGER 130 
#define  SQLITE_AFF_NUMERIC 129 
#define  SQLITE_AFF_REAL 128 
 int SQLITE_AFF_TEXT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(Mem *pMem, u8 aff, u8 encoding){
  if( pMem->flags & MEM_Null ) return;
  switch( aff ){
    case SQLITE_AFF_BLOB: {   /* Really a cast to BLOB */
      if( (pMem->flags & MEM_Blob)==0 ){
        FUNC2(pMem, SQLITE_AFF_TEXT, encoding);
        FUNC1( pMem->flags & MEM_Str || pMem->db->mallocFailed );
        if( pMem->flags & MEM_Str ) FUNC0(pMem, MEM_Blob);
      }else{
        pMem->flags &= ~(MEM_TypeMask&~MEM_Blob);
      }
      break;
    }
    case SQLITE_AFF_NUMERIC: {
      FUNC4(pMem);
      break;
    }
    case SQLITE_AFF_INTEGER: {
      FUNC3(pMem);
      break;
    }
    case SQLITE_AFF_REAL: {
      FUNC5(pMem);
      break;
    }
    default: {
      FUNC1( aff==SQLITE_AFF_TEXT );
      FUNC1( MEM_Str==(MEM_Blob>>3) );
      pMem->flags |= (pMem->flags&MEM_Blob)>>3;
      FUNC2(pMem, SQLITE_AFF_TEXT, encoding);
      FUNC1( pMem->flags & MEM_Str || pMem->db->mallocFailed );
      pMem->flags &= ~(MEM_Int|MEM_Real|MEM_Blob|MEM_Zero);
      break;
    }
  }
}
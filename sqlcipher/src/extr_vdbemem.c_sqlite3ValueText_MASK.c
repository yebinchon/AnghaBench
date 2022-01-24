#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_8__ {int flags; int enc; void const* z; TYPE_1__* db; } ;
typedef  TYPE_2__ sqlite3_value ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int MEM_Null ; 
 int MEM_Str ; 
 int MEM_Term ; 
 int SQLITE_UTF16_ALIGNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void const* FUNC4 (TYPE_2__*,int) ; 

const void *FUNC5(sqlite3_value* pVal, u8 enc){
  if( !pVal ) return 0;
  FUNC0( pVal->db==0 || FUNC3(pVal->db->mutex) );
  FUNC0( (enc&3)==(enc&~SQLITE_UTF16_ALIGNED) );
  FUNC0( !FUNC2(pVal) );
  if( (pVal->flags&(MEM_Str|MEM_Term))==(MEM_Str|MEM_Term) && pVal->enc==enc ){
    FUNC0( FUNC1(pVal) );
    return pVal->z;
  }
  if( pVal->flags&MEM_Null ){
    return 0;
  }
  return FUNC4(pVal, enc);
}
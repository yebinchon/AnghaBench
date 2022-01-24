#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_3__ {int flags; scalar_t__ z; scalar_t__ n; } ;
typedef  TYPE_1__ Mem ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int MEM_Blob ; 
 int MEM_Null ; 
 int MEM_Str ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void const* FUNC2 (int /*<<< orphan*/ *) ; 

const void *FUNC3(sqlite3_value *pVal){
  Mem *p = (Mem*)pVal;
  if( p->flags & (MEM_Blob|MEM_Str) ){
    if( FUNC0(p)!=SQLITE_OK ){
      FUNC1( p->flags==MEM_Null && p->z==0 );
      return 0;
    }
    p->flags |= MEM_Blob;
    return p->n ? p->z : 0;
  }else{
    return FUNC2(pVal);
  }
}
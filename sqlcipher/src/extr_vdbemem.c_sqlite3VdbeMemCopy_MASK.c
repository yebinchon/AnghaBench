#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; } ;
typedef  TYPE_1__ Mem ;

/* Variables and functions */
 int /*<<< orphan*/  MEMCELLSIZE ; 
 int MEM_Blob ; 
 int MEM_Dyn ; 
 int MEM_Ephem ; 
 int MEM_Static ; 
 int MEM_Str ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(Mem *pTo, const Mem *pFrom){
  int rc = SQLITE_OK;

  FUNC1( !FUNC3(pFrom) );
  if( FUNC0(pTo) ) FUNC5(pTo);
  FUNC2(pTo, pFrom, MEMCELLSIZE);
  pTo->flags &= ~MEM_Dyn;
  if( pTo->flags&(MEM_Str|MEM_Blob) ){
    if( 0==(pFrom->flags&MEM_Static) ){
      pTo->flags |= MEM_Ephem;
      rc = FUNC4(pTo);
    }
  }

  return rc;
}
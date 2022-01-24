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
struct TYPE_10__ {int flags; scalar_t__ db; } ;
typedef  TYPE_1__ sqlite3_value ;

/* Variables and functions */
 int /*<<< orphan*/  MEMCELLSIZE ; 
 int MEM_Blob ; 
 int MEM_Dyn ; 
 int MEM_Ephem ; 
 int MEM_Static ; 
 int MEM_Str ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 

sqlite3_value *FUNC5(const sqlite3_value *pOrig){
  sqlite3_value *pNew;
  if( pOrig==0 ) return 0;
  pNew = FUNC4( sizeof(*pNew) );
  if( pNew==0 ) return 0;
  FUNC1(pNew, 0, sizeof(*pNew));
  FUNC0(pNew, pOrig, MEMCELLSIZE);
  pNew->flags &= ~MEM_Dyn;
  pNew->db = 0;
  if( pNew->flags&(MEM_Str|MEM_Blob) ){
    pNew->flags &= ~(MEM_Static|MEM_Dyn);
    pNew->flags |= MEM_Ephem;
    if( FUNC3(pNew)!=SQLITE_OK ){
      FUNC2(pNew);
      pNew = 0;
    }
  }
  return pNew;
}
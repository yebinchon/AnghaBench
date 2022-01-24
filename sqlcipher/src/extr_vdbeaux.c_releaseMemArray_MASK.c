#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ pnBytesFreed; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_9__ {scalar_t__ db; int flags; scalar_t__ xDel; scalar_t__ szMalloc; int /*<<< orphan*/  zMalloc; } ;
typedef  TYPE_2__ Mem ;

/* Variables and functions */
 int MEM_Agg ; 
 int MEM_Dyn ; 
 int MEM_Undefined ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ sqlite3VdbeFrameMemDel ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(Mem *p, int N){
  if( p && N ){
    Mem *pEnd = &p[N];
    sqlite3 *db = p->db;
    if( db->pnBytesFreed ){
      do{
        if( p->szMalloc ) FUNC1(db, p->zMalloc);
      }while( (++p)<pEnd );
      return;
    }
    do{
      FUNC0( (&p[1])==pEnd || p[0].db==p[1].db );
      FUNC0( FUNC3(p) );

      /* This block is really an inlined version of sqlite3VdbeMemRelease()
      ** that takes advantage of the fact that the memory cell value is 
      ** being set to NULL after releasing any dynamic resources.
      **
      ** The justification for duplicating code is that according to 
      ** callgrind, this causes a certain test case to hit the CPU 4.7 
      ** percent less (x86 linux, gcc version 4.1.2, -O6) than if 
      ** sqlite3MemRelease() were called from here. With -O2, this jumps
      ** to 6.6 percent. The test case is inserting 1000 rows into a table 
      ** with no indexes using a single prepared INSERT statement, bind() 
      ** and reset(). Inserts are grouped into a transaction.
      */
      FUNC5( p->flags & MEM_Agg );
      FUNC5( p->flags & MEM_Dyn );
      FUNC5( p->xDel==sqlite3VdbeFrameMemDel );
      if( p->flags&(MEM_Agg|MEM_Dyn) ){
        FUNC4(p);
      }else if( p->szMalloc ){
        FUNC2(db, p->zMalloc);
        p->szMalloc = 0;
      }

      p->flags = MEM_Undefined;
    }while( (++p)<pEnd );
  }
}
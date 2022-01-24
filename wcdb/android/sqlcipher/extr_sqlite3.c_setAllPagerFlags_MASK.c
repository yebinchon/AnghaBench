#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nDb; int flags; TYPE_2__* aDb; scalar_t__ autoCommit; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_5__ {int safety_level; scalar_t__ pBt; } ;
typedef  TYPE_2__ Db ;

/* Variables and functions */
 int PAGER_CACHESPILL ; 
 int PAGER_CKPT_FULLFSYNC ; 
 int PAGER_FLAGS_MASK ; 
 int PAGER_FULLFSYNC ; 
 int PAGER_SYNCHRONOUS_MASK ; 
 int SQLITE_CacheSpill ; 
 int SQLITE_CkptFullFSync ; 
 int SQLITE_FullFSync ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(sqlite3 *db){
  if( db->autoCommit ){
    Db *pDb = db->aDb;
    int n = db->nDb;
    FUNC0( SQLITE_FullFSync==PAGER_FULLFSYNC );
    FUNC0( SQLITE_CkptFullFSync==PAGER_CKPT_FULLFSYNC );
    FUNC0( SQLITE_CacheSpill==PAGER_CACHESPILL );
    FUNC0( (PAGER_FULLFSYNC | PAGER_CKPT_FULLFSYNC | PAGER_CACHESPILL)
             ==  PAGER_FLAGS_MASK );
    FUNC0( (pDb->safety_level & PAGER_SYNCHRONOUS_MASK)==pDb->safety_level );
    while( (n--) > 0 ){
      if( pDb->pBt ){
        FUNC1(pDb->pBt,
                 pDb->safety_level | (db->flags & PAGER_FLAGS_MASK) );
      }
      pDb++;
    }
  }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int isInterrupted; } ;
struct TYPE_6__ {scalar_t__ magic; TYPE_1__ u1; } ;
typedef  TYPE_2__ sqlite3 ;

/* Variables and functions */
 scalar_t__ SQLITE_MAGIC_ZOMBIE ; 
 int /*<<< orphan*/  SQLITE_MISUSE_BKPT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void FUNC1(sqlite3 *db){
#ifdef SQLITE_ENABLE_API_ARMOR
  if( !sqlite3SafetyCheckOk(db) && (db==0 || db->magic!=SQLITE_MAGIC_ZOMBIE) ){
    (void)SQLITE_MISUSE_BKPT;
    return;
  }
#endif
  db->u1.isInterrupted = 1;
}
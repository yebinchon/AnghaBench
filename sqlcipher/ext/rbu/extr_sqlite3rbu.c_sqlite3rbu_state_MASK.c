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
struct TYPE_3__ {scalar_t__ rc; int eStage; } ;
typedef  TYPE_1__ sqlite3rbu ;

/* Variables and functions */
 int RBU_STAGE_CKPT ; 
 int RBU_STAGE_DONE ; 
 int RBU_STAGE_MOVE ; 
 int RBU_STAGE_OAL ; 
 scalar_t__ SQLITE_DONE ; 
 scalar_t__ SQLITE_OK ; 
 int SQLITE_RBU_STATE_CHECKPOINT ; 
 int SQLITE_RBU_STATE_DONE ; 
 int SQLITE_RBU_STATE_ERROR ; 
 int SQLITE_RBU_STATE_MOVE ; 
 int SQLITE_RBU_STATE_OAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

int FUNC1(sqlite3rbu *p){
  int aRes[] = {
    0, SQLITE_RBU_STATE_OAL, SQLITE_RBU_STATE_MOVE,
    0, SQLITE_RBU_STATE_CHECKPOINT, SQLITE_RBU_STATE_DONE
  };

  FUNC0( RBU_STAGE_OAL==1 );
  FUNC0( RBU_STAGE_MOVE==2 );
  FUNC0( RBU_STAGE_CKPT==4 );
  FUNC0( RBU_STAGE_DONE==5 );
  FUNC0( aRes[RBU_STAGE_OAL]==SQLITE_RBU_STATE_OAL );
  FUNC0( aRes[RBU_STAGE_MOVE]==SQLITE_RBU_STATE_MOVE );
  FUNC0( aRes[RBU_STAGE_CKPT]==SQLITE_RBU_STATE_CHECKPOINT );
  FUNC0( aRes[RBU_STAGE_DONE]==SQLITE_RBU_STATE_DONE );

  if( p->rc!=SQLITE_OK && p->rc!=SQLITE_DONE ){
    return SQLITE_RBU_STATE_ERROR;
  }else{
    FUNC0( p->rc!=SQLITE_DONE || p->eStage==RBU_STAGE_DONE );
    FUNC0( p->eStage==RBU_STAGE_OAL
         || p->eStage==RBU_STAGE_MOVE
         || p->eStage==RBU_STAGE_CKPT
         || p->eStage==RBU_STAGE_DONE
    );
    return aRes[p->eStage];
  }
}
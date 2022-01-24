#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_4__* pLogWriter; int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_2__ lsm_db ;
struct TYPE_5__ {TYPE_4__* z; } ;
struct TYPE_7__ {TYPE_1__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 

void FUNC1(lsm_db *db){
  if( db->pLogWriter ){
    FUNC0(db->pEnv, db->pLogWriter->buf.z);
    FUNC0(db->pEnv, db->pLogWriter);
    db->pLogWriter = 0;
  }
}
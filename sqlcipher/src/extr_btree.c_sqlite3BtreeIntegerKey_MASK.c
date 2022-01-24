#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_6__ {int /*<<< orphan*/  nKey; } ;
struct TYPE_7__ {scalar_t__ eState; int curIntKey; TYPE_1__ info; } ;
typedef  TYPE_2__ BtCursor ;

/* Variables and functions */
 scalar_t__ CURSOR_VALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

i64 FUNC3(BtCursor *pCur){
  FUNC0( FUNC1(pCur) );
  FUNC0( pCur->eState==CURSOR_VALID );
  FUNC0( pCur->curIntKey );
  FUNC2(pCur);
  return pCur->info.nKey;
}
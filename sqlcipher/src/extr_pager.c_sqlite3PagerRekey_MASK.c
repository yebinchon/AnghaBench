#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {scalar_t__ pgno; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_1__ DbPage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 

void FUNC2(DbPage *pPg, Pgno iNew, u16 flags){
  FUNC0( pPg->pgno!=iNew );
  pPg->flags = flags;
  FUNC1(pPg, iNew);
}
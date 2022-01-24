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
struct TYPE_4__ {int nReal; scalar_t__ aReal; } ;
typedef  TYPE_1__ multiplexGroup ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(multiplexGroup *pGroup){
  int i;
  for(i=0; i<pGroup->nReal; i++){ FUNC0(pGroup, i, 0); }
  FUNC1(pGroup->aReal);
  pGroup->aReal = 0;
  pGroup->nReal = 0;
}
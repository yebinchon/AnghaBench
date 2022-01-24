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
struct TYPE_5__ {int /*<<< orphan*/  zName; TYPE_1__* pSchema; } ;
typedef  TYPE_2__ Table ;
struct TYPE_4__ {int /*<<< orphan*/  fkeyHash; } ;
typedef  int /*<<< orphan*/  FKey ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

FKey *FUNC1(Table *pTab){
  return (FKey *)FUNC0(&pTab->pSchema->fkeyHash, pTab->zName);
}
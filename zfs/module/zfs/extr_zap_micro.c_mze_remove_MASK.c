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
struct TYPE_4__ {int /*<<< orphan*/  zap_avl; } ;
struct TYPE_5__ {TYPE_1__ zap_m; int /*<<< orphan*/  zap_rwlock; int /*<<< orphan*/  zap_ismicro; } ;
typedef  TYPE_2__ zap_t ;
typedef  int /*<<< orphan*/  mzap_ent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(zap_t *zap, mzap_ent_t *mze)
{
	FUNC0(zap->zap_ismicro);
	FUNC0(FUNC1(&zap->zap_rwlock));

	FUNC2(&zap->zap_m.zap_avl, mze);
	FUNC3(mze, sizeof (mzap_ent_t));
}
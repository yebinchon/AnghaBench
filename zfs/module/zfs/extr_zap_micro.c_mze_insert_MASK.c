#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  zap_avl; } ;
struct TYPE_11__ {int zap_ismicro; TYPE_1__ zap_m; int /*<<< orphan*/  zap_rwlock; } ;
typedef  TYPE_2__ zap_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_12__ {int mze_chunkid; int /*<<< orphan*/  mze_cd; int /*<<< orphan*/  mze_hash; } ;
typedef  TYPE_3__ mzap_ent_t ;
struct TYPE_13__ {scalar_t__* mze_name; int /*<<< orphan*/  mze_cd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 TYPE_7__* FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(zap_t *zap, int chunkid, uint64_t hash)
{
	FUNC0(zap->zap_ismicro);
	FUNC0(FUNC2(&zap->zap_rwlock));

	mzap_ent_t *mze = FUNC4(sizeof (mzap_ent_t), KM_SLEEP);
	mze->mze_chunkid = chunkid;
	mze->mze_hash = hash;
	mze->mze_cd = FUNC1(zap, mze)->mze_cd;
	FUNC0(FUNC1(zap, mze)->mze_name[0] != 0);
	FUNC3(&zap->zap_m.zap_avl, mze);
}
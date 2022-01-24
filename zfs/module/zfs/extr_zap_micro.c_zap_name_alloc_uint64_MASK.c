#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ zap_normflags; } ;
typedef  TYPE_1__ zap_t ;
struct TYPE_8__ {int zn_key_intlen; int zn_key_orig_numints; int zn_key_norm_numints; int /*<<< orphan*/  zn_hash; scalar_t__ zn_matchtype; int /*<<< orphan*/  const* zn_key_norm; int /*<<< orphan*/  const* zn_key_orig; TYPE_1__* zn_zap; } ;
typedef  TYPE_2__ zap_name_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 TYPE_2__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

zap_name_t *
FUNC3(zap_t *zap, const uint64_t *key, int numints)
{
	zap_name_t *zn = FUNC1(sizeof (zap_name_t), KM_SLEEP);

	FUNC0(zap->zap_normflags == 0);
	zn->zn_zap = zap;
	zn->zn_key_intlen = sizeof (*key);
	zn->zn_key_orig = zn->zn_key_norm = key;
	zn->zn_key_orig_numints = zn->zn_key_norm_numints = numints;
	zn->zn_matchtype = 0;

	zn->zn_hash = FUNC2(zn);
	return (zn);
}
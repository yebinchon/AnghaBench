#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {int nvs_op; scalar_t__ nvs_private; } ;
typedef  TYPE_1__ nvstream_t ;
struct TYPE_10__ {scalar_t__ n_curr; } ;
typedef  TYPE_2__ nvs_native_t ;
struct TYPE_11__ {scalar_t__ nvp_size; } ;
typedef  TYPE_3__ nvpair_t ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
#define  NVS_OP_DECODE 129 
#define  NVS_OP_ENCODE 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(nvstream_t *nvs, nvpair_t *nvp)
{
	switch (nvs->nvs_op) {
	case NVS_OP_ENCODE: {
		nvs_native_t *native = (nvs_native_t *)nvs->nvs_private;
		uint64_t *strp = (void *)
		    (native->n_curr - nvp->nvp_size + FUNC1(nvp));
		/*
		 * Null out pointers that are meaningless in the packed
		 * structure. The addresses may not be aligned, so we have
		 * to use bzero.
		 */
		FUNC3(strp, FUNC0(nvp) * sizeof (uint64_t));
		break;
	}
	case NVS_OP_DECODE: {
		char **strp = (void *)FUNC2(nvp);
		char *buf = ((char *)strp + FUNC0(nvp) * sizeof (uint64_t));
		int i;

		for (i = 0; i < FUNC0(nvp); i++) {
			strp[i] = buf;
			buf += FUNC4(buf) + 1;
		}
		break;
	}
	}
}
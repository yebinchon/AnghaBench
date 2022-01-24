#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  w128_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int idx; int initialized; TYPE_3__* sfmt; } ;
typedef  TYPE_1__ sfmt_t ;
struct TYPE_6__ {int* u; } ;

/* Variables and functions */
 int N ; 
 int N32 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (void**,int,int) ; 

sfmt_t *FUNC6(uint32_t *init_key, int key_length) {
    void *p;
    sfmt_t *ctx;
    int i, j, count;
    uint32_t r;
    int lag;
    int mid;
    int size = N * 4;
    uint32_t *psfmt32;

    if (FUNC5(&p, sizeof(w128_t), sizeof(sfmt_t)) != 0) {
	return NULL;
    }
    ctx = (sfmt_t *)p;
    psfmt32 = &ctx->sfmt[0].u[0];

    if (size >= 623) {
	lag = 11;
    } else if (size >= 68) {
	lag = 7;
    } else if (size >= 39) {
	lag = 5;
    } else {
	lag = 3;
    }
    mid = (size - lag) / 2;

    FUNC3(ctx->sfmt, 0x8b, sizeof(ctx->sfmt));
    if (key_length + 1 > N32) {
	count = key_length + 1;
    } else {
	count = N32;
    }
    r = FUNC0(psfmt32[FUNC2(0)] ^ psfmt32[FUNC2(mid)]
	      ^ psfmt32[FUNC2(N32 - 1)]);
    psfmt32[FUNC2(mid)] += r;
    r += key_length;
    psfmt32[FUNC2(mid + lag)] += r;
    psfmt32[FUNC2(0)] = r;

    count--;
    for (i = 1, j = 0; (j < count) && (j < key_length); j++) {
	r = FUNC0(psfmt32[FUNC2(i)] ^ psfmt32[FUNC2((i + mid) % N32)]
		  ^ psfmt32[FUNC2((i + N32 - 1) % N32)]);
	psfmt32[FUNC2((i + mid) % N32)] += r;
	r += init_key[j] + i;
	psfmt32[FUNC2((i + mid + lag) % N32)] += r;
	psfmt32[FUNC2(i)] = r;
	i = (i + 1) % N32;
    }
    for (; j < count; j++) {
	r = FUNC0(psfmt32[FUNC2(i)] ^ psfmt32[FUNC2((i + mid) % N32)]
		  ^ psfmt32[FUNC2((i + N32 - 1) % N32)]);
	psfmt32[FUNC2((i + mid) % N32)] += r;
	r += i;
	psfmt32[FUNC2((i + mid + lag) % N32)] += r;
	psfmt32[FUNC2(i)] = r;
	i = (i + 1) % N32;
    }
    for (j = 0; j < N32; j++) {
	r = FUNC1(psfmt32[FUNC2(i)] + psfmt32[FUNC2((i + mid) % N32)]
		  + psfmt32[FUNC2((i + N32 - 1) % N32)]);
	psfmt32[FUNC2((i + mid) % N32)] ^= r;
	r -= i;
	psfmt32[FUNC2((i + mid + lag) % N32)] ^= r;
	psfmt32[FUNC2(i)] = r;
	i = (i + 1) % N32;
    }

    ctx->idx = N32;
    FUNC4(ctx);
    ctx->initialized = 1;

    return ctx;
}
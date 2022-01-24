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
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ BuildCtx ;

/* Variables and functions */
 int BUILD_MAX_FOLD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int nkeys ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (int*,int,int,int) ; 

__attribute__((used)) static void FUNC4(BuildCtx *ctx)
{
  uint32_t htab[BUILD_MAX_FOLD*2+1];
  uint32_t sz, r;
  /* Search for the smallest hash table with an odd size. */
  for (sz = (nkeys|1); sz < BUILD_MAX_FOLD*2; sz += 2) {
    /* First try all shift hash combinations. */
    for (r = 0; r < 32*32; r++) {
      if (FUNC3(htab, sz, r, 0)) {
	FUNC2(ctx, htab, sz);
	FUNC1(ctx->fp,
		"#define fold_hashkey(k)\t(((((k)<<%u)-(k))<<%u)%%%u)\n\n",
		r>>5, r&31, sz);
	return;
      }
    }
    /* Then try all rotate hash combinations. */
    for (r = 0; r < 32*32; r++) {
      if (FUNC3(htab, sz, r, 1)) {
	FUNC2(ctx, htab, sz);
	FUNC1(ctx->fp,
	  "#define fold_hashkey(k)\t(lj_rol(lj_rol((k),%u)-(k),%u)%%%u)\n\n",
		r>>5, r&31, sz);
	return;
      }
    }
  }
  FUNC1(stderr, "Error: search for perfect hash failed\n");
  FUNC0(1);
}
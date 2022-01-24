#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int* zc_word; } ;
struct TYPE_4__ {TYPE_3__ scalar; } ;
typedef  TYPE_1__ fletcher_4_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int,int,int) ; 

__attribute__((used)) static void
FUNC1(fletcher_4_ctx_t *ctx, const void *buf,
    uint64_t size)
{
	const uint32_t *ip = buf;
	const uint32_t *ipend = ip + (size / sizeof (uint32_t));
	uint64_t a, b, c, d;

	a = ctx->scalar.zc_word[0];
	b = ctx->scalar.zc_word[1];
	c = ctx->scalar.zc_word[2];
	d = ctx->scalar.zc_word[3];

	for (; ip < ipend; ip++) {
		a += ip[0];
		b += a;
		c += b;
		d += c;
	}

	FUNC0(&ctx->scalar, a, b, c, d);
}
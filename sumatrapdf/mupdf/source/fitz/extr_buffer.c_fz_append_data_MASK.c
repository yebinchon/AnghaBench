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
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ cap; scalar_t__ data; scalar_t__ unused_bits; } ;
typedef  TYPE_1__ fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,size_t) ; 

void
FUNC2(fz_context *ctx, fz_buffer *buf, const void *data, size_t len)
{
	if (buf->len + len > buf->cap)
		FUNC0(ctx, buf, buf->len + len);
	FUNC1(buf->data + buf->len, data, len);
	buf->len += len;
	buf->unused_bits = 0;
}
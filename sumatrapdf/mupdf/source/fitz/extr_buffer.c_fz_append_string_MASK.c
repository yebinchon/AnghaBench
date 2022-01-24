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
struct TYPE_4__ {size_t len; size_t cap; scalar_t__ unused_bits; scalar_t__ data; } ;
typedef  TYPE_1__ fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

void
FUNC3(fz_context *ctx, fz_buffer *buf, const char *data)
{
	size_t len = FUNC2(data);
	if (buf->len + len > buf->cap)
		FUNC0(ctx, buf, buf->len + len);
	FUNC1(buf->data + buf->len, data, len);
	buf->len += len;
	buf->unused_bits = 0;
}
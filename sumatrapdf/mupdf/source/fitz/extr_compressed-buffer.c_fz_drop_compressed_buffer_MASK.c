#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_7__ {int /*<<< orphan*/  globals; } ;
struct TYPE_8__ {TYPE_1__ jbig2; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_10__ {int /*<<< orphan*/  buffer; TYPE_3__ params; } ;
typedef  TYPE_4__ fz_compressed_buffer ;

/* Variables and functions */
 scalar_t__ FZ_IMAGE_JBIG2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 

void
FUNC3(fz_context *ctx, fz_compressed_buffer *buf)
{
	if (buf)
	{
		if (buf->params.type == FZ_IMAGE_JBIG2)
			FUNC1(ctx, buf->params.u.jbig2.globals);
		FUNC0(ctx, buf->buffer);
		FUNC2(ctx, buf);
	}
}
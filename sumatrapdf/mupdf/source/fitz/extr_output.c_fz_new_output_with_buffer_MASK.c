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
struct TYPE_4__ {int /*<<< orphan*/  tell; int /*<<< orphan*/  seek; } ;
typedef  TYPE_1__ fz_output ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  buffer_drop ; 
 int /*<<< orphan*/  buffer_seek ; 
 int /*<<< orphan*/  buffer_tell ; 
 int /*<<< orphan*/  buffer_write ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

fz_output *
FUNC2(fz_context *ctx, fz_buffer *buf)
{
	fz_output *out = FUNC1(ctx, 0, FUNC0(ctx, buf), buffer_write, NULL, buffer_drop);
	out->seek = buffer_seek;
	out->tell = buffer_tell;
	return out;
}
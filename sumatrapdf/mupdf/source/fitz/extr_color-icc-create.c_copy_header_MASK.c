#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
struct TYPE_5__ {TYPE_1__ illuminant; int /*<<< orphan*/  platform; int /*<<< orphan*/  magic; int /*<<< orphan*/  pcs; int /*<<< orphan*/  colorSpace; int /*<<< orphan*/  deviceClass; int /*<<< orphan*/  version; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ icHeader ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, fz_buffer *buffer, icHeader *header)
{
	FUNC1(ctx, buffer, header->size);
	FUNC0(ctx, buffer, 0, 4);
	FUNC1(ctx, buffer, header->version);
	FUNC1(ctx, buffer, header->deviceClass);
	FUNC1(ctx, buffer, header->colorSpace);
	FUNC1(ctx, buffer, header->pcs);
	FUNC0(ctx, buffer, 0, 12);
	FUNC1(ctx, buffer, header->magic);
	FUNC1(ctx, buffer, header->platform);
	FUNC0(ctx, buffer, 0, 24);
	FUNC1(ctx, buffer, header->illuminant.X);
	FUNC1(ctx, buffer, header->illuminant.Y);
	FUNC1(ctx, buffer, header->illuminant.Z);
	FUNC0(ctx, buffer, 0, 48);
}
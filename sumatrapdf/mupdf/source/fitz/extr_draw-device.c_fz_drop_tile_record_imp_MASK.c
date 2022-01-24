#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  group_alpha; int /*<<< orphan*/  shape; int /*<<< orphan*/  dest; } ;
typedef  TYPE_1__ tile_record ;
typedef  int /*<<< orphan*/  fz_storable ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, fz_storable *storable)
{
	tile_record *tr = (tile_record *)storable;
	FUNC0(ctx, tr->dest);
	FUNC0(ctx, tr->shape);
	FUNC0(ctx, tr->group_alpha);
	FUNC1(ctx, tr);
}
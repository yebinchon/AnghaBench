#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dev; int /*<<< orphan*/  (* drop_writer ) (int /*<<< orphan*/ *,TYPE_1__*) ;scalar_t__ close_writer; } ;
typedef  TYPE_1__ fz_document_writer ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC4(fz_context *ctx, fz_document_writer *wri)
{
	if (!wri)
		return;

	if (wri->close_writer)
		FUNC2(ctx, "dropping unclosed document writer");
	if (wri->drop_writer)
		wri->drop_writer(ctx, wri);
	if (wri->dev)
		FUNC0(ctx, wri->dev);
	FUNC1(ctx, wri);
}
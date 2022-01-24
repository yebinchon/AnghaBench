#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_rect ;
struct TYPE_2__ {int /*<<< orphan*/  pixmap; int /*<<< orphan*/  draw; } ;
typedef  TYPE_1__ fz_pwg_writer ;
typedef  int /*<<< orphan*/  fz_document_writer ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static fz_device *
FUNC1(fz_context *ctx, fz_document_writer *wri_, fz_rect mediabox)
{
	fz_pwg_writer *wri = (fz_pwg_writer*)wri_;
	return FUNC0(ctx, &wri->draw, mediabox, &wri->pixmap);
}
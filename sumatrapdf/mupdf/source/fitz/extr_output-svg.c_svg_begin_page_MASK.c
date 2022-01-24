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
struct TYPE_4__ {int count; int /*<<< orphan*/  id; int /*<<< orphan*/  reuse_images; int /*<<< orphan*/  text_format; int /*<<< orphan*/  out; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ fz_svg_writer ;
struct TYPE_5__ {float x1; float x0; float y1; float y0; } ;
typedef  TYPE_2__ fz_rect ;
typedef  int /*<<< orphan*/  fz_document_writer ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static fz_device *
FUNC3(fz_context *ctx, fz_document_writer *wri_, fz_rect mediabox)
{
	fz_svg_writer *wri = (fz_svg_writer*)wri_;
	char path[PATH_MAX];

	float w = mediabox.x1 - mediabox.x0;
	float h = mediabox.y1 - mediabox.y0;

	wri->count += 1;

	FUNC0(ctx, path, sizeof path, wri->path, wri->count);
	wri->out = FUNC1(ctx, path, 0);
	return FUNC2(ctx, wri->out, w, h, wri->text_format, wri->reuse_images, &wri->id);
}
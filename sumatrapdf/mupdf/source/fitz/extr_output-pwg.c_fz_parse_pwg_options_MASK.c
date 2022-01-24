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
struct TYPE_5__ {void* row_step; void* row_feed; void* row_count; void* compression; void* media_type_num; void* tumble; void* tray_switch; void* separations; void** PageSize; void* output_face_up; void* orientation; void* num_copies; void* negative_print; void* mirror_print; void* media_weight; void* media_position; void* manual_feed; void* leading_edge; void* jog; void* insert_sheet; void* duplex; void* cut_media; void* collate; void* advance_media; void* advance_distance; int /*<<< orphan*/  page_size_name; int /*<<< orphan*/  rendering_intent; int /*<<< orphan*/  output_type; int /*<<< orphan*/  media_type; int /*<<< orphan*/  media_color; int /*<<< orphan*/  media_class; } ;
typedef  TYPE_1__ fz_pwg_options ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

fz_pwg_options *
FUNC5(fz_context *ctx, fz_pwg_options *opts, const char *args)
{
	const char *val;

	FUNC3(opts, 0, sizeof *opts);

	if (FUNC2(ctx, args, "media_class", &val))
		FUNC4(ctx, "media_class", FUNC1(ctx, val, opts->media_class, 64));
	if (FUNC2(ctx, args, "media_color", &val))
		FUNC4(ctx, "media_color", FUNC1(ctx, val, opts->media_color, 64));
	if (FUNC2(ctx, args, "media_type", &val))
		FUNC4(ctx, "media_type", FUNC1(ctx, val, opts->media_type, 64));
	if (FUNC2(ctx, args, "output_type", &val))
		FUNC4(ctx, "output_type", FUNC1(ctx, val, opts->output_type, 64));
	if (FUNC2(ctx, args, "rendering_intent", &val))
		FUNC4(ctx, "rendering_intent", FUNC1(ctx, val, opts->rendering_intent, 64));
	if (FUNC2(ctx, args, "page_size_name", &val))
		FUNC4(ctx, "page_size_name", FUNC1(ctx, val, opts->page_size_name, 64));
	if (FUNC2(ctx, args, "advance_distance", &val))
		opts->advance_distance = FUNC0(val);
	if (FUNC2(ctx, args, "advance_media", &val))
		opts->advance_media = FUNC0(val);
	if (FUNC2(ctx, args, "collate", &val))
		opts->collate = FUNC0(val);
	if (FUNC2(ctx, args, "cut_media", &val))
		opts->cut_media = FUNC0(val);
	if (FUNC2(ctx, args, "duplex", &val))
		opts->duplex = FUNC0(val);
	if (FUNC2(ctx, args, "insert_sheet", &val))
		opts->insert_sheet = FUNC0(val);
	if (FUNC2(ctx, args, "jog", &val))
		opts->jog = FUNC0(val);
	if (FUNC2(ctx, args, "leading_edge", &val))
		opts->leading_edge = FUNC0(val);
	if (FUNC2(ctx, args, "manual_feed", &val))
		opts->manual_feed = FUNC0(val);
	if (FUNC2(ctx, args, "media_position", &val))
		opts->media_position = FUNC0(val);
	if (FUNC2(ctx, args, "media_weight", &val))
		opts->media_weight = FUNC0(val);
	if (FUNC2(ctx, args, "mirror_print", &val))
		opts->mirror_print = FUNC0(val);
	if (FUNC2(ctx, args, "negative_print", &val))
		opts->negative_print = FUNC0(val);
	if (FUNC2(ctx, args, "num_copies", &val))
		opts->num_copies = FUNC0(val);
	if (FUNC2(ctx, args, "orientation", &val))
		opts->orientation = FUNC0(val);
	if (FUNC2(ctx, args, "output_face_up", &val))
		opts->output_face_up = FUNC0(val);
	if (FUNC2(ctx, args, "page_size_x", &val))
		opts->PageSize[0] = FUNC0(val);
	if (FUNC2(ctx, args, "page_size_y", &val))
		opts->PageSize[1] = FUNC0(val);
	if (FUNC2(ctx, args, "separations", &val))
		opts->separations = FUNC0(val);
	if (FUNC2(ctx, args, "tray_switch", &val))
		opts->tray_switch = FUNC0(val);
	if (FUNC2(ctx, args, "tumble", &val))
		opts->tumble = FUNC0(val);
	if (FUNC2(ctx, args, "media_type_num", &val))
		opts->media_type_num = FUNC0(val);
	if (FUNC2(ctx, args, "compression", &val))
		opts->compression = FUNC0(val);
	if (FUNC2(ctx, args, "row_count", &val))
		opts->row_count = FUNC0(val);
	if (FUNC2(ctx, args, "row_feed", &val))
		opts->row_feed = FUNC0(val);
	if (FUNC2(ctx, args, "row_step", &val))
		opts->row_step = FUNC0(val);

	return opts;
}
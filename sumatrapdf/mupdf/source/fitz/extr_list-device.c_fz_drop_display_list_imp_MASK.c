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
typedef  int /*<<< orphan*/  fz_text ;
typedef  int /*<<< orphan*/  fz_stroke_state ;
typedef  int /*<<< orphan*/  fz_storable ;
typedef  int /*<<< orphan*/  fz_shade ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_image ;
struct TYPE_4__ {int len; int size; int cs; scalar_t__ alpha; int ctm; int cmd; struct TYPE_4__* list; scalar_t__ path; scalar_t__ stroke; scalar_t__ color; scalar_t__ rect; } ;
typedef  TYPE_1__ fz_display_node ;
typedef  TYPE_1__ fz_display_list ;
typedef  int /*<<< orphan*/  fz_default_colorspaces ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
 scalar_t__ ALPHA_PRESENT ; 
#define  CS_CMYK_0 146 
#define  CS_CMYK_1 145 
#define  CS_GRAY_0 144 
#define  CS_GRAY_1 143 
#define  CS_OTHER_0 142 
#define  CS_RGB_0 141 
#define  CS_RGB_1 140 
#define  CS_UNCHANGED 139 
 int CTM_CHANGE_AD ; 
 int CTM_CHANGE_BC ; 
 int CTM_CHANGE_EF ; 
#define  FZ_CMD_BEGIN_GROUP 138 
#define  FZ_CMD_CLIP_IMAGE_MASK 137 
#define  FZ_CMD_CLIP_STROKE_TEXT 136 
#define  FZ_CMD_CLIP_TEXT 135 
#define  FZ_CMD_DEFAULT_COLORSPACES 134 
#define  FZ_CMD_FILL_IMAGE 133 
#define  FZ_CMD_FILL_IMAGE_MASK 132 
#define  FZ_CMD_FILL_SHADE 131 
#define  FZ_CMD_FILL_TEXT 130 
#define  FZ_CMD_IGNORE_TEXT 129 
#define  FZ_CMD_STROKE_TEXT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(fz_context *ctx, fz_storable *list_)
{
	fz_display_list *list = (fz_display_list *)list_;
	fz_display_node *node = list->list;
	fz_display_node *node_end = list->list + list->len;
	int cs_n = 1;
	fz_colorspace *cs;

	while (node != node_end)
	{
		fz_display_node n = *node;
		fz_display_node *next = node + n.size;

		node++;
		if (n.rect)
		{
			node += FUNC0(sizeof(fz_rect));
		}
		switch (n.cs)
		{
		default:
		case CS_UNCHANGED:
			break;
		case CS_GRAY_0:
		case CS_GRAY_1:
			cs_n = 1;
			break;
		case CS_RGB_0:
		case CS_RGB_1:
			cs_n = 3;
			break;
		case CS_CMYK_0:
		case CS_CMYK_1:
			cs_n = 4;
			break;
		case CS_OTHER_0:
			cs = *(fz_colorspace **)node;
			cs_n = FUNC1(ctx, cs);
			FUNC2(ctx, cs);
			node += FUNC0(sizeof(fz_colorspace *));
			break;
		}
		if (n.color)
		{
			node += FUNC0(cs_n * sizeof(float));
		}
		if (n.alpha == ALPHA_PRESENT)
		{
			node += FUNC0(sizeof(float));
		}
		if (n.ctm & CTM_CHANGE_AD)
			node += FUNC0(2*sizeof(float));
		if (n.ctm & CTM_CHANGE_BC)
			node += FUNC0(2*sizeof(float));
		if (n.ctm & CTM_CHANGE_EF)
			node += FUNC0(2*sizeof(float));
		if (n.stroke)
		{
			FUNC7(ctx, *(fz_stroke_state **)node);
			node += FUNC0(sizeof(fz_stroke_state *));
		}
		if (n.path)
		{
			int path_size = FUNC10((fz_path *)node);
			FUNC5(ctx, (fz_path *)node);
			node += FUNC0(path_size);
		}
		switch(n.cmd)
		{
		case FZ_CMD_FILL_TEXT:
		case FZ_CMD_STROKE_TEXT:
		case FZ_CMD_CLIP_TEXT:
		case FZ_CMD_CLIP_STROKE_TEXT:
		case FZ_CMD_IGNORE_TEXT:
			FUNC8(ctx, *(fz_text **)node);
			break;
		case FZ_CMD_FILL_SHADE:
			FUNC6(ctx, *(fz_shade **)node);
			break;
		case FZ_CMD_FILL_IMAGE:
		case FZ_CMD_FILL_IMAGE_MASK:
		case FZ_CMD_CLIP_IMAGE_MASK:
			FUNC4(ctx, *(fz_image **)node);
			break;
		case FZ_CMD_BEGIN_GROUP:
			FUNC2(ctx, *(fz_colorspace **)node);
			break;
		case FZ_CMD_DEFAULT_COLORSPACES:
			FUNC3(ctx, *(fz_default_colorspaces **)node);
			break;
		}
		node = next;
	}
	FUNC9(ctx, list->list);
	FUNC9(ctx, list);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ height; int /*<<< orphan*/  width; } ;
struct TYPE_24__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_30__ {TYPE_4__ size; TYPE_3__ origin; } ;
struct TYPE_26__ {int offscreen_bitmap_size; int /*<<< orphan*/ * offscreen_bitmap; scalar_t__ offscreen_context; TYPE_9__ offscreen_rect; int /*<<< orphan*/  display_id; scalar_t__ height; int /*<<< orphan*/  width; scalar_t__ screen_top; scalar_t__ screen_left; } ;
typedef  TYPE_5__ screen_data_t ;
struct TYPE_27__ {TYPE_7__* p_sys; } ;
typedef  TYPE_6__ demux_t ;
struct TYPE_22__ {int i_width; int i_height; } ;
struct TYPE_23__ {TYPE_1__ video; } ;
struct TYPE_28__ {scalar_t__ i_top; scalar_t__ i_left; TYPE_2__ fmt; scalar_t__ b_follow_mouse; scalar_t__ p_data; } ;
typedef  TYPE_7__ demux_sys_t ;
struct TYPE_29__ {int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_8__ block_t ;
struct TYPE_21__ {scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_9__ CGRect ;
typedef  TYPE_10__ CGPoint ;
typedef  int /*<<< orphan*/  CGImageRef ;
typedef  int /*<<< orphan*/  CGEventRef ;
typedef  int /*<<< orphan*/  CGColorSpaceRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_9__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_9__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_10__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_9__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,TYPE_10__*) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*,scalar_t__,scalar_t__) ; 
 TYPE_8__* FUNC14 (int) ; 
 int /*<<< orphan*/ * FUNC15 (int,int) ; 
 int kCGBitmapByteOrder32Little ; 
 int /*<<< orphan*/  kCGColorSpaceGenericRGB ; 
 int kCGImageAlphaPremultipliedFirst ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,char*) ; 

block_t *FUNC18(demux_t *p_demux)
{
    demux_sys_t *p_sys = p_demux->p_sys;
    screen_data_t *p_data = (screen_data_t *)p_sys->p_data;
    block_t *p_block;
    CGRect capture_rect;
    CGImageRef image;

    /* forward cursor location */
    CGPoint cursor_pos;

    CGEventRef event = FUNC6(NULL);
    cursor_pos = FUNC7(event);
    FUNC0(event);

    cursor_pos.x -= p_data->screen_left;
    cursor_pos.y -= p_data->screen_top;

    if (p_sys->b_follow_mouse)
        FUNC13(p_sys, cursor_pos.x, cursor_pos.y);

    capture_rect.origin.x = p_sys->i_left;
    capture_rect.origin.y = p_sys->i_top;
    capture_rect.size.width = p_data->width;
    capture_rect.size.height = p_data->height;

    /* fetch image data */
    image = FUNC5(p_data->display_id, capture_rect);
    if (!image) {
        FUNC17(p_demux, "no image!");
        return NULL;
    }

    /* create offscreen context */
    if (!p_data->offscreen_context) {
        CGColorSpaceRef colorspace;

        colorspace = FUNC2(kCGColorSpaceGenericRGB);

        p_data->offscreen_bitmap_size = p_sys->fmt.video.i_width * p_sys->fmt.video.i_height * 4;
        p_data->offscreen_bitmap = FUNC15(1, p_data->offscreen_bitmap_size);
        if (p_data->offscreen_bitmap == NULL) {
            FUNC17(p_demux, "can't allocate offscreen bitmap");
            FUNC0(image);
            return NULL;
        }

        p_data->offscreen_context = FUNC1(p_data->offscreen_bitmap, p_sys->fmt.video.i_width, p_sys->fmt.video.i_height, 8, p_sys->fmt.video.i_width * 4, colorspace, kCGImageAlphaPremultipliedFirst | kCGBitmapByteOrder32Little);
        if (!p_data->offscreen_context) {
            FUNC17(p_demux, "can't create offscreen bitmap context");
            FUNC0(image);
            return NULL;
        }

        FUNC3(colorspace);

        p_data->offscreen_rect = FUNC10(0, 0, p_sys->fmt.video.i_width, p_sys->fmt.video.i_height);
    }

    /* fetch cursor image */
    CGImageRef cursor_image;
    int cid = FUNC12();
    CGPoint outHotSpot;
    cursor_image = FUNC11(cid, (char *)"com.apple.coregraphics.GlobalCurrent", &outHotSpot);

    /* draw screen image and cursor image */
    CGRect cursor_rect;
    cursor_rect.size.width = FUNC9(cursor_image);
    cursor_rect.size.height = FUNC8(cursor_image);
    cursor_rect.origin.x = cursor_pos.x - p_sys->i_left - outHotSpot.x;
    cursor_rect.origin.y = p_data->offscreen_rect.size.height
        - (cursor_pos.y + cursor_rect.size.height - p_sys->i_top - outHotSpot.y);

    FUNC4(p_data->offscreen_context, p_data->offscreen_rect, image);
    FUNC4(p_data->offscreen_context, cursor_rect, cursor_image);

    /* build block */
    p_block = FUNC14(p_data->offscreen_bitmap_size);
    if (!p_block) {
        FUNC17(p_demux, "can't get block");
        FUNC0(image);
        return NULL;
    }

    FUNC16(p_block->p_buffer, p_data->offscreen_bitmap, p_data->offscreen_bitmap_size);

    FUNC0(image);

    return p_block;
}
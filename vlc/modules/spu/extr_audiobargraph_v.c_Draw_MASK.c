#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int member_0; int member_1; int member_2; int member_3; int member_4; } ;
typedef  TYPE_1__ uint8_t ;
struct TYPE_23__ {int i_visible_lines; int i_pitch; int /*<<< orphan*/  p_pixels; } ;
typedef  TYPE_2__ plane_t ;
struct TYPE_24__ {int i_planes; TYPE_2__* p; } ;
typedef  TYPE_3__ picture_t ;
struct TYPE_25__ {int nbChannels; int scale; int barWidth; int* i_values; scalar_t__ alarm; TYPE_3__* p_pic; } ;
typedef  TYPE_4__ BarGraph_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int,TYPE_1__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char,unsigned char,char,char) ; 
 TYPE_1__ const* black ; 
 TYPE_1__ const* bright_green ; 
 TYPE_1__ const* bright_red ; 
 TYPE_1__ const* bright_yellow ; 
 TYPE_1__ const* green ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_1__ const* red ; 
 TYPE_1__ const* white ; 
 TYPE_1__ const* yellow ; 

__attribute__((used)) static void FUNC8(BarGraph_t *b)
{
    int nbChannels = b->nbChannels;
    int scale      = b->scale;
    int barWidth   = b->barWidth;

    int w = 40;
    if (nbChannels > 0)
        w = 2 * nbChannels * barWidth + 30;
    int h = scale + 30;

    int level[6];
    for (int i = 0; i < 6; i++)
        level[i] = FUNC4(-(i+1) * 10) * scale + 20;

    if (b->p_pic)
        FUNC7(b->p_pic);
    b->p_pic = FUNC6(FUNC3('Y','U','V','A'), w, h, 1, 1);
    if (!b->p_pic)
        return;
    picture_t *p_pic = b->p_pic;
    plane_t *p = p_pic->p;

    for (int i = 0 ; i < p_pic->i_planes ; i++)
        FUNC5(p[i].p_pixels, 0x00, p[i].i_visible_lines * p[i].i_pitch);

    FUNC0(p, scale, 20, black);
    FUNC0(p, scale, 22, white);

    static const uint8_t pixmap[6][5] = {
        { 0x17, 0x15, 0x15, 0x15, 0x17 },
        { 0x77, 0x45, 0x75, 0x15, 0x77 },
        { 0x77, 0x15, 0x75, 0x15, 0x77 },
        { 0x17, 0x15, 0x75, 0x55, 0x57 },
        { 0x77, 0x15, 0x75, 0x45, 0x77 },
        { 0x77, 0x55, 0x75, 0x45, 0x77 },
    };

    for (int i = 0; i < 6; i++) {
        FUNC1(p, h - 1 - level[i] - 1, 24, white, 1, 3);
        FUNC1(p, h - 1 - level[i],     24, black, 2, 3);
        FUNC2(p, h, pixmap[i], level[i]);
    }

    int minus8  = FUNC4(- 8) * scale + 20;
    int minus18 = FUNC4(-18) * scale + 20;
    int *i_values  = b->i_values;
    const uint8_t *indicator_color = b->alarm ? bright_red : black;

    for (int i = 0; i < nbChannels; i++) {
        int pi = 30 + i * (5 + barWidth);

        FUNC1(p, h - 20 - 1, pi, indicator_color, 8, barWidth);

        for (int line = 20; line < i_values[i] + 20; line++) {
            if (line < minus18)
                FUNC1(p, h - line - 1, pi, bright_green, 1, barWidth);
            else if (line < minus8)
                FUNC1(p, h - line - 1, pi, bright_yellow, 1, barWidth);
            else
                FUNC1(p, h - line - 1, pi, bright_red, 1, barWidth);
        }

        for (int line = i_values[i] + 20; line < scale + 20; line++) {
            if (line < minus18)
                FUNC1(p, h - line - 1, pi, green, 1, barWidth);
            else if (line < minus8)
                FUNC1(p, h - line - 1, pi, yellow, 1, barWidth);
            else
                FUNC1(p, h - line - 1, pi, red, 1, barWidth);
        }
    }
}
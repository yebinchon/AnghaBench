#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {char UnicodeChar; } ;
struct TYPE_21__ {void* Attributes; TYPE_1__ Char; } ;
struct TYPE_20__ {int X; int Y; } ;
struct TYPE_19__ {int Left; int Right; int Top; int Bottom; } ;
typedef  TYPE_2__ SMALL_RECT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_3__ COORD ;
typedef  TYPE_4__ CHAR_INFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 char FUNC0 (TYPE_3__) ; 
 void* DEFAULT_ATTRIB ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ FUNC1 () ; 
 int H ; 
 scalar_t__ FUNC2 (TYPE_2__,TYPE_3__) ; 
 scalar_t__ FUNC3 (TYPE_2__,TYPE_3__,TYPE_3__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,TYPE_3__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* TEST_ATTRIB ; 
 int /*<<< orphan*/  TRUE ; 
 int W ; 
 void* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__,char,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(HANDLE hCon, COORD sbSize)
{
    SMALL_RECT  scroll, clip;
    COORD       dst, c, tc;
    CHAR_INFO   ci;
    BOOL ret;

#define W 11
#define H 7

#define IN_SRECT(r,c) ((r).Left <= (c).X && (c).X <= (r).Right && (r).Top <= (c).Y && (c).Y <= (r).Bottom)
#define IN_SRECT2(r,d,c) ((d).X <= (c).X && (c).X <= (d).X + (r).Right - (r).Left && (d).Y <= (c).Y && (c).Y <= (d).Y + (r).Bottom - (r).Top)

    /* no clipping, src & dst rect don't overlap */
    FUNC9(hCon, sbSize, TRUE);

    scroll.Left = 0;
    scroll.Right = W - 1;
    scroll.Top = 0;
    scroll.Bottom = H - 1;
    dst.X = W + 3;
    dst.Y = H + 3;
    ci.Char.UnicodeChar = '#';
    ci.Attributes = TEST_ATTRIB;

    clip.Left = 0;
    clip.Right = sbSize.X - 1;
    clip.Top = 0;
    clip.Bottom = sbSize.Y - 1;

    FUNC7(FUNC4(hCon, &scroll, NULL, dst, &ci), "Scrolling SB\n");

    for (c.Y = 0; c.Y < sbSize.Y; c.Y++)
    {
        for (c.X = 0; c.X < sbSize.X; c.X++)
        {
            if (IN_SRECT2(scroll, dst, c) && IN_SRECT(clip, c))
            {
                tc.X = c.X - dst.X;
                tc.Y = c.Y - dst.Y;
                FUNC8(hCon, c, FUNC0(tc), DEFAULT_ATTRIB);
            }
            else if (IN_SRECT(scroll, c) && IN_SRECT(clip, c))
                FUNC8(hCon, c, '#', TEST_ATTRIB);
            else FUNC8(hCon, c, FUNC0(c), DEFAULT_ATTRIB);
        }
    }

    /* no clipping, src & dst rect do overlap */
    FUNC9(hCon, sbSize, TRUE);

    scroll.Left = 0;
    scroll.Right = W - 1;
    scroll.Top = 0;
    scroll.Bottom = H - 1;
    dst.X = W /2;
    dst.Y = H / 2;
    ci.Char.UnicodeChar = '#';
    ci.Attributes = TEST_ATTRIB;

    clip.Left = 0;
    clip.Right = sbSize.X - 1;
    clip.Top = 0;
    clip.Bottom = sbSize.Y - 1;

    FUNC7(FUNC4(hCon, &scroll, NULL, dst, &ci), "Scrolling SB\n");

    for (c.Y = 0; c.Y < sbSize.Y; c.Y++)
    {
        for (c.X = 0; c.X < sbSize.X; c.X++)
        {
            if (dst.X <= c.X && c.X < dst.X + W && dst.Y <= c.Y && c.Y < dst.Y + H)
            {
                tc.X = c.X - dst.X;
                tc.Y = c.Y - dst.Y;
                FUNC8(hCon, c, FUNC0(tc), DEFAULT_ATTRIB);
            }
            else if (c.X < W && c.Y < H) FUNC8(hCon, c, '#', TEST_ATTRIB);
            else FUNC8(hCon, c, FUNC0(c), DEFAULT_ATTRIB);
        }
    }

    /* clipping, src & dst rect don't overlap */
    FUNC9(hCon, sbSize, TRUE);

    scroll.Left = 0;
    scroll.Right = W - 1;
    scroll.Top = 0;
    scroll.Bottom = H - 1;
    dst.X = W + 3;
    dst.Y = H + 3;
    ci.Char.UnicodeChar = '#';
    ci.Attributes = TEST_ATTRIB;

    clip.Left = W / 2;
    clip.Right = FUNC6(W + W / 2, sbSize.X - 1);
    clip.Top = H / 2;
    clip.Bottom = FUNC6(H + H / 2, sbSize.Y - 1);

    FUNC5(0xdeadbeef);
    ret = FUNC4(hCon, &scroll, &clip, dst, &ci);
    if (ret)
    {
        for (c.Y = 0; c.Y < sbSize.Y; c.Y++)
        {
            for (c.X = 0; c.X < sbSize.X; c.X++)
            {
                if (IN_SRECT2(scroll, dst, c) && IN_SRECT(clip, c))
                {
                    tc.X = c.X - dst.X;
                    tc.Y = c.Y - dst.Y;
                    FUNC8(hCon, c, FUNC0(tc), DEFAULT_ATTRIB);
                }
                else if (IN_SRECT(scroll, c) && IN_SRECT(clip, c))
                    FUNC8(hCon, c, '#', TEST_ATTRIB);
                else FUNC8(hCon, c, FUNC0(c), DEFAULT_ATTRIB);
            }
        }
    }
    else
    {
        /* Win9x will fail, Only accept ERROR_NOT_ENOUGH_MEMORY */
        FUNC7(FUNC1() == ERROR_NOT_ENOUGH_MEMORY,
            "Expected ERROR_NOT_ENOUGH_MEMORY, got %u\n", FUNC1());
    }

    /* clipping, src & dst rect do overlap */
    FUNC9(hCon, sbSize, TRUE);

    scroll.Left = 0;
    scroll.Right = W - 1;
    scroll.Top = 0;
    scroll.Bottom = H - 1;
    dst.X = W / 2 - 3;
    dst.Y = H / 2 - 3;
    ci.Char.UnicodeChar = '#';
    ci.Attributes = TEST_ATTRIB;

    clip.Left = W / 2;
    clip.Right = FUNC6(W + W / 2, sbSize.X - 1);
    clip.Top = H / 2;
    clip.Bottom = FUNC6(H + H / 2, sbSize.Y - 1);

    FUNC7(FUNC4(hCon, &scroll, &clip, dst, &ci), "Scrolling SB\n");

    for (c.Y = 0; c.Y < sbSize.Y; c.Y++)
    {
        for (c.X = 0; c.X < sbSize.X; c.X++)
        {
            if (IN_SRECT2(scroll, dst, c) && IN_SRECT(clip, c))
            {
                tc.X = c.X - dst.X;
                tc.Y = c.Y - dst.Y;
                FUNC8(hCon, c, FUNC0(tc), DEFAULT_ATTRIB);
            }
            else if (IN_SRECT(scroll, c) && IN_SRECT(clip, c))
                FUNC8(hCon, c, '#', TEST_ATTRIB);
            else FUNC8(hCon, c, FUNC0(c), DEFAULT_ATTRIB);
        }
    }
}
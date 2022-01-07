
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {char UnicodeChar; } ;
struct TYPE_21__ {void* Attributes; TYPE_1__ Char; } ;
struct TYPE_20__ {int X; int Y; } ;
struct TYPE_19__ {int Left; int Right; int Top; int Bottom; } ;
typedef TYPE_2__ SMALL_RECT ;
typedef int HANDLE ;
typedef TYPE_3__ COORD ;
typedef TYPE_4__ CHAR_INFO ;
typedef scalar_t__ BOOL ;


 char CONTENT (TYPE_3__) ;
 void* DEFAULT_ATTRIB ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ GetLastError () ;
 int H ;
 scalar_t__ IN_SRECT (TYPE_2__,TYPE_3__) ;
 scalar_t__ IN_SRECT2 (TYPE_2__,TYPE_3__,TYPE_3__) ;
 scalar_t__ ScrollConsoleScreenBufferA (int ,TYPE_2__*,TYPE_2__*,TYPE_3__,TYPE_4__*) ;
 int SetLastError (int) ;
 void* TEST_ATTRIB ;
 int TRUE ;
 int W ;
 void* min (int,int) ;
 int ok (int,char*,...) ;
 int okCHAR (int ,TYPE_3__,char,void*) ;
 int resetContent (int ,TYPE_3__,int ) ;

__attribute__((used)) static void testScroll(HANDLE hCon, COORD sbSize)
{
    SMALL_RECT scroll, clip;
    COORD dst, c, tc;
    CHAR_INFO ci;
    BOOL ret;
    resetContent(hCon, sbSize, TRUE);

    scroll.Left = 0;
    scroll.Right = 11 - 1;
    scroll.Top = 0;
    scroll.Bottom = 7 - 1;
    dst.X = 11 + 3;
    dst.Y = 7 + 3;
    ci.Char.UnicodeChar = '#';
    ci.Attributes = TEST_ATTRIB;

    clip.Left = 0;
    clip.Right = sbSize.X - 1;
    clip.Top = 0;
    clip.Bottom = sbSize.Y - 1;

    ok(ScrollConsoleScreenBufferA(hCon, &scroll, ((void*)0), dst, &ci), "Scrolling SB\n");

    for (c.Y = 0; c.Y < sbSize.Y; c.Y++)
    {
        for (c.X = 0; c.X < sbSize.X; c.X++)
        {
            if (((dst).X <= (c).X && (c).X <= (dst).X + (scroll).Right - (scroll).Left && (dst).Y <= (c).Y && (c).Y <= (dst).Y + (scroll).Bottom - (scroll).Top) && ((clip).Left <= (c).X && (c).X <= (clip).Right && (clip).Top <= (c).Y && (c).Y <= (clip).Bottom))
            {
                tc.X = c.X - dst.X;
                tc.Y = c.Y - dst.Y;
                okCHAR(hCon, c, CONTENT(tc), DEFAULT_ATTRIB);
            }
            else if (((scroll).Left <= (c).X && (c).X <= (scroll).Right && (scroll).Top <= (c).Y && (c).Y <= (scroll).Bottom) && ((clip).Left <= (c).X && (c).X <= (clip).Right && (clip).Top <= (c).Y && (c).Y <= (clip).Bottom))
                okCHAR(hCon, c, '#', TEST_ATTRIB);
            else okCHAR(hCon, c, CONTENT(c), DEFAULT_ATTRIB);
        }
    }


    resetContent(hCon, sbSize, TRUE);

    scroll.Left = 0;
    scroll.Right = 11 - 1;
    scroll.Top = 0;
    scroll.Bottom = 7 - 1;
    dst.X = 11 /2;
    dst.Y = 7 / 2;
    ci.Char.UnicodeChar = '#';
    ci.Attributes = TEST_ATTRIB;

    clip.Left = 0;
    clip.Right = sbSize.X - 1;
    clip.Top = 0;
    clip.Bottom = sbSize.Y - 1;

    ok(ScrollConsoleScreenBufferA(hCon, &scroll, ((void*)0), dst, &ci), "Scrolling SB\n");

    for (c.Y = 0; c.Y < sbSize.Y; c.Y++)
    {
        for (c.X = 0; c.X < sbSize.X; c.X++)
        {
            if (dst.X <= c.X && c.X < dst.X + 11 && dst.Y <= c.Y && c.Y < dst.Y + 7)
            {
                tc.X = c.X - dst.X;
                tc.Y = c.Y - dst.Y;
                okCHAR(hCon, c, CONTENT(tc), DEFAULT_ATTRIB);
            }
            else if (c.X < 11 && c.Y < 7) okCHAR(hCon, c, '#', TEST_ATTRIB);
            else okCHAR(hCon, c, CONTENT(c), DEFAULT_ATTRIB);
        }
    }


    resetContent(hCon, sbSize, TRUE);

    scroll.Left = 0;
    scroll.Right = 11 - 1;
    scroll.Top = 0;
    scroll.Bottom = 7 - 1;
    dst.X = 11 + 3;
    dst.Y = 7 + 3;
    ci.Char.UnicodeChar = '#';
    ci.Attributes = TEST_ATTRIB;

    clip.Left = 11 / 2;
    clip.Right = min(11 + 11 / 2, sbSize.X - 1);
    clip.Top = 7 / 2;
    clip.Bottom = min(7 + 7 / 2, sbSize.Y - 1);

    SetLastError(0xdeadbeef);
    ret = ScrollConsoleScreenBufferA(hCon, &scroll, &clip, dst, &ci);
    if (ret)
    {
        for (c.Y = 0; c.Y < sbSize.Y; c.Y++)
        {
            for (c.X = 0; c.X < sbSize.X; c.X++)
            {
                if (((dst).X <= (c).X && (c).X <= (dst).X + (scroll).Right - (scroll).Left && (dst).Y <= (c).Y && (c).Y <= (dst).Y + (scroll).Bottom - (scroll).Top) && ((clip).Left <= (c).X && (c).X <= (clip).Right && (clip).Top <= (c).Y && (c).Y <= (clip).Bottom))
                {
                    tc.X = c.X - dst.X;
                    tc.Y = c.Y - dst.Y;
                    okCHAR(hCon, c, CONTENT(tc), DEFAULT_ATTRIB);
                }
                else if (((scroll).Left <= (c).X && (c).X <= (scroll).Right && (scroll).Top <= (c).Y && (c).Y <= (scroll).Bottom) && ((clip).Left <= (c).X && (c).X <= (clip).Right && (clip).Top <= (c).Y && (c).Y <= (clip).Bottom))
                    okCHAR(hCon, c, '#', TEST_ATTRIB);
                else okCHAR(hCon, c, CONTENT(c), DEFAULT_ATTRIB);
            }
        }
    }
    else
    {

        ok(GetLastError() == ERROR_NOT_ENOUGH_MEMORY,
            "Expected ERROR_NOT_ENOUGH_MEMORY, got %u\n", GetLastError());
    }


    resetContent(hCon, sbSize, TRUE);

    scroll.Left = 0;
    scroll.Right = 11 - 1;
    scroll.Top = 0;
    scroll.Bottom = 7 - 1;
    dst.X = 11 / 2 - 3;
    dst.Y = 7 / 2 - 3;
    ci.Char.UnicodeChar = '#';
    ci.Attributes = TEST_ATTRIB;

    clip.Left = 11 / 2;
    clip.Right = min(11 + 11 / 2, sbSize.X - 1);
    clip.Top = 7 / 2;
    clip.Bottom = min(7 + 7 / 2, sbSize.Y - 1);

    ok(ScrollConsoleScreenBufferA(hCon, &scroll, &clip, dst, &ci), "Scrolling SB\n");

    for (c.Y = 0; c.Y < sbSize.Y; c.Y++)
    {
        for (c.X = 0; c.X < sbSize.X; c.X++)
        {
            if (((dst).X <= (c).X && (c).X <= (dst).X + (scroll).Right - (scroll).Left && (dst).Y <= (c).Y && (c).Y <= (dst).Y + (scroll).Bottom - (scroll).Top) && ((clip).Left <= (c).X && (c).X <= (clip).Right && (clip).Top <= (c).Y && (c).Y <= (clip).Bottom))
            {
                tc.X = c.X - dst.X;
                tc.Y = c.Y - dst.Y;
                okCHAR(hCon, c, CONTENT(tc), DEFAULT_ATTRIB);
            }
            else if (((scroll).Left <= (c).X && (c).X <= (scroll).Right && (scroll).Top <= (c).Y && (c).Y <= (scroll).Bottom) && ((clip).Left <= (c).X && (c).X <= (clip).Right && (clip).Top <= (c).Y && (c).Y <= (clip).Bottom))
                okCHAR(hCon, c, '#', TEST_ATTRIB);
            else okCHAR(hCon, c, CONTENT(c), DEFAULT_ATTRIB);
        }
    }
}

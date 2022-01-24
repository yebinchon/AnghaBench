#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  error ;
struct TYPE_9__ {scalar_t__ right; scalar_t__ left; scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_8__ {scalar_t__ cx; scalar_t__ cy; } ;
struct TYPE_7__ {char tmBreakChar; } ;
typedef  TYPE_1__ TEXTMETRICA ;
typedef  TYPE_2__ SIZE ;
typedef  TYPE_3__ RECT ;
typedef  char* PCSTR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,char const*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(HDC hdc, PCSTR str, RECT *clientArea)
{
    INT         y,
                breakCount,
                areaWidth = clientArea->right - clientArea->left,
                nErrors = 0, e;
    const char *pFirstChar, *pLastChar;
    SIZE        size;
    TEXTMETRICA tm;
    struct err
    {
        const char *start;
        int  len;
        int  GetTextExtentExPointWWidth;
    } error[20];

    FUNC1(hdc, &tm);
    y = clientArea->top;
    do {
        breakCount = 0;
        while (*str == tm.tmBreakChar) str++; /* skip leading break chars */
        pFirstChar = str;

        do {
            pLastChar = str;

            /* if not at the end of the string, ... */
            if (*str == '\0') break;
            /* ... add the next word to the current extent */
            while (*str != '\0' && *str++ != tm.tmBreakChar);
            breakCount++;
            FUNC2(hdc, 0, 0);
            FUNC0(hdc, pFirstChar, str - pFirstChar - 1, &size);
        } while ((int) size.cx < areaWidth);

        /* ignore trailing break chars */
        breakCount--;
        while (*(pLastChar - 1) == tm.tmBreakChar)
        {
            pLastChar--;
            breakCount--;
        }

        if (*str == '\0' || breakCount <= 0) pLastChar = str;

        FUNC2(hdc, 0, 0);
        FUNC0(hdc, pFirstChar, pLastChar - pFirstChar, &size);

        /* do not justify the last extent */
        if (*str != '\0' && breakCount > 0)
        {
            FUNC2(hdc, areaWidth - size.cx, breakCount);
            FUNC0(hdc, pFirstChar, pLastChar - pFirstChar, &size);
            if (size.cx != areaWidth && nErrors < sizeof(error)/sizeof(error[0]) - 1)
            {
                error[nErrors].start = pFirstChar;
                error[nErrors].len = pLastChar - pFirstChar;
                error[nErrors].GetTextExtentExPointWWidth = size.cx;
                nErrors++;
            }
        }

        y += size.cy;
        str = pLastChar;
    } while (*str && y < clientArea->bottom);

    for (e = 0; e < nErrors; e++)
    {
        /* The width returned by GetTextExtentPoint32() is exactly the same
           returned by GetTextExtentExPointW() - see dlls/gdi32/font.c */
        FUNC3(error[e].GetTextExtentExPointWWidth == areaWidth,
            "GetTextExtentPointW() for \"%.*s\" should have returned a width of %d, not %d.\n",
           error[e].len, error[e].start, areaWidth, error[e].GetTextExtentExPointWWidth);
    }
}
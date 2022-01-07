
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int error ;
struct TYPE_9__ {scalar_t__ right; scalar_t__ left; scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_8__ {scalar_t__ cx; scalar_t__ cy; } ;
struct TYPE_7__ {char tmBreakChar; } ;
typedef TYPE_1__ TEXTMETRICA ;
typedef TYPE_2__ SIZE ;
typedef TYPE_3__ RECT ;
typedef char* PCSTR ;
typedef scalar_t__ INT ;
typedef int HDC ;


 int GetTextExtentPoint32A (int ,char const*,int,TYPE_2__*) ;
 int GetTextMetricsA (int ,TYPE_1__*) ;
 int SetTextJustification (int ,scalar_t__,scalar_t__) ;
 int ok (int,char*,int,char const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void testJustification(HDC hdc, PCSTR str, RECT *clientArea)
{
    INT y,
                breakCount,
                areaWidth = clientArea->right - clientArea->left,
                nErrors = 0, e;
    const char *pFirstChar, *pLastChar;
    SIZE size;
    TEXTMETRICA tm;
    struct err
    {
        const char *start;
        int len;
        int GetTextExtentExPointWWidth;
    } error[20];

    GetTextMetricsA(hdc, &tm);
    y = clientArea->top;
    do {
        breakCount = 0;
        while (*str == tm.tmBreakChar) str++;
        pFirstChar = str;

        do {
            pLastChar = str;


            if (*str == '\0') break;

            while (*str != '\0' && *str++ != tm.tmBreakChar);
            breakCount++;
            SetTextJustification(hdc, 0, 0);
            GetTextExtentPoint32A(hdc, pFirstChar, str - pFirstChar - 1, &size);
        } while ((int) size.cx < areaWidth);


        breakCount--;
        while (*(pLastChar - 1) == tm.tmBreakChar)
        {
            pLastChar--;
            breakCount--;
        }

        if (*str == '\0' || breakCount <= 0) pLastChar = str;

        SetTextJustification(hdc, 0, 0);
        GetTextExtentPoint32A(hdc, pFirstChar, pLastChar - pFirstChar, &size);


        if (*str != '\0' && breakCount > 0)
        {
            SetTextJustification(hdc, areaWidth - size.cx, breakCount);
            GetTextExtentPoint32A(hdc, pFirstChar, pLastChar - pFirstChar, &size);
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


        ok(error[e].GetTextExtentExPointWWidth == areaWidth,
            "GetTextExtentPointW() for \"%.*s\" should have returned a width of %d, not %d.\n",
           error[e].len, error[e].start, areaWidth, error[e].GetTextExtentExPointWWidth);
    }
}

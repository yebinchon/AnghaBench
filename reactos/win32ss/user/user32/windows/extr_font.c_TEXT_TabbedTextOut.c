
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int left; int top; int right; int bottom; } ;
struct TYPE_8__ {int cx; int cy; } ;
struct TYPE_7__ {int tmAveCharWidth; int tmHeight; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef TYPE_2__ SIZE ;
typedef TYPE_3__ RECT ;
typedef char* LPCWSTR ;
typedef int LONG ;
typedef int INT ;
typedef int HDC ;
typedef scalar_t__ BOOL ;


 int ETO_OPAQUE ;
 int ExtTextOutW (int ,int,int,int ,TYPE_3__*,char*,int,int *) ;
 scalar_t__ GetBkMode (int ) ;
 int GetTextExtentPointW (int ,char*,int,TYPE_2__*) ;
 int GetTextMetricsW (int ,TYPE_1__*) ;
 int MAKELONG (int,int) ;
 scalar_t__ OPAQUE ;
 int abs (int const) ;

LONG TEXT_TabbedTextOut( HDC hdc,
                         INT x,
                         INT y,
                         LPCWSTR lpstr,
                         INT count,
                         INT cTabStops,
                         const INT *lpTabPos,
                         INT nTabOrg,
                         BOOL fDisplayText )
{
    INT defWidth;
    SIZE extent;
    int i, j;
    int start = x;
    TEXTMETRICW tm;

    if (!lpTabPos)
        cTabStops=0;

    GetTextMetricsW( hdc, &tm );

    if (cTabStops == 1)
    {
        defWidth = *lpTabPos;
        cTabStops = 0;
    }
    else
    {
        defWidth = 8 * tm.tmAveCharWidth;
    }

    while (count > 0)
    {
        RECT r;
        INT x0;
        x0 = x;
        r.left = x0;


        for (i = 0; i < count; i++)
            if (lpstr[i] != '\t') break;
        for (j = i; j < count; j++)
            if (lpstr[j] == '\t') break;

        GetTextExtentPointW( hdc, lpstr + i, j - i , &extent );

        if( i) {

            for (; cTabStops > i; lpTabPos++, cTabStops--)
            {
                if( nTabOrg + abs( *lpTabPos) > x) {
                    if( lpTabPos[ i - 1] >= 0) {

                        x = nTabOrg + lpTabPos[ i-1] + extent.cx;
                        break;
                    }
                    else
                    {



                        if (nTabOrg - lpTabPos[ i - 1] - extent.cx > x)
                        {
                            x = nTabOrg - lpTabPos[ i - 1];
                            x0 = x - extent.cx;
                            break;
                        }
                    }
                }
            }


            if ((cTabStops <= i) && (defWidth > 0)) {
                x0 = nTabOrg + ((x - nTabOrg) / defWidth + i) * defWidth;
                x = x0 + extent.cx;
            } else if ((cTabStops <= i) && (defWidth < 0)) {
                x = nTabOrg + ((x - nTabOrg + extent.cx) / -defWidth + i)
                    * -defWidth;
                x0 = x - extent.cx;
            }
        } else
            x += extent.cx;

        if (fDisplayText)
        {
            r.top = y;
            r.right = x;
            r.bottom = y + extent.cy;

            ExtTextOutW( hdc, x0, y, GetBkMode(hdc) == OPAQUE ? ETO_OPAQUE : 0,
                         &r, lpstr + i, j - i, ((void*)0) );
        }
        count -= j;
        lpstr += j;
    }

    if(!extent.cy)
        extent.cy = tm.tmHeight;

    return MAKELONG(x - start, extent.cy);
}

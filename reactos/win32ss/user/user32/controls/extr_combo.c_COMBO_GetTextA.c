
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wState; scalar_t__ hWndLBox; scalar_t__ hWndEdit; } ;
typedef scalar_t__ LRESULT ;
typedef scalar_t__* LPSTR ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int LPARAM ;
typedef scalar_t__ INT ;


 int CBF_EDIT ;
 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 scalar_t__ LB_ERR ;
 int LB_GETCURSEL ;
 int LB_GETTEXT ;
 int LB_GETTEXTLEN ;
 scalar_t__ SendMessageA (scalar_t__,int ,scalar_t__,int ) ;
 scalar_t__ SendMessageW (scalar_t__,int ,int ,int ) ;
 int WM_GETTEXT ;
 int lstrcpynA (scalar_t__*,scalar_t__*,scalar_t__) ;

__attribute__((used)) static LRESULT COMBO_GetTextA( LPHEADCOMBO lphc, INT count, LPSTR buf )
{
    INT length;

    if( lphc->wState & CBF_EDIT )
        return SendMessageA( lphc->hWndEdit, WM_GETTEXT, count, (LPARAM)buf );



    if (!count || !buf) return 0;
    if( lphc->hWndLBox )
    {
        INT idx = SendMessageW(lphc->hWndLBox, LB_GETCURSEL, 0, 0);
        if (idx == LB_ERR) goto error;
        length = SendMessageA(lphc->hWndLBox, LB_GETTEXTLEN, idx, 0 );
        if (length == LB_ERR) goto error;


        if (length >= count)
        {
            LPSTR lpBuffer = HeapAlloc(GetProcessHeap(), 0, (length + 1) );
            if (!lpBuffer) goto error;
            length = SendMessageA(lphc->hWndLBox, LB_GETTEXT, idx, (LPARAM)lpBuffer);


            if (length != LB_ERR)
            {
                lstrcpynA( buf, lpBuffer, count );
                length = count;
            }
            HeapFree( GetProcessHeap(), 0, lpBuffer );
        }
        else length = SendMessageA(lphc->hWndLBox, LB_GETTEXT, idx, (LPARAM)buf);

        if (length == LB_ERR) return 0;
        return length;
    }

 error:
    buf[0] = 0;
    return 0;
}

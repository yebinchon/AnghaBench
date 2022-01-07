
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int wState; scalar_t__ hWndLBox; scalar_t__ hWndEdit; } ;
typedef int LRESULT ;
typedef scalar_t__* LPWSTR ;
typedef TYPE_1__* LPHEADCOMBO ;
typedef int LPARAM ;
typedef int INT ;


 int CBF_EDIT ;
 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int LB_ERR ;
 int LB_GETCURSEL ;
 int LB_GETTEXT ;
 int LB_GETTEXTLEN ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int WM_GETTEXT ;
 int lstrcpynW (scalar_t__*,scalar_t__*,int ) ;

__attribute__((used)) static LRESULT COMBO_GetTextW( LPHEADCOMBO lphc, INT count, LPWSTR buf )
{
    INT length;

    if( lphc->wState & CBF_EDIT )
        return SendMessageW( lphc->hWndEdit, WM_GETTEXT, count, (LPARAM)buf );



    if (!count || !buf) return 0;
    if( lphc->hWndLBox )
    {
        INT idx = SendMessageW(lphc->hWndLBox, LB_GETCURSEL, 0, 0);
        if (idx == LB_ERR) goto error;
        length = SendMessageW(lphc->hWndLBox, LB_GETTEXTLEN, idx, 0 );
        if (length == LB_ERR) goto error;


        if (length >= count)
        {
            LPWSTR lpBuffer = HeapAlloc(GetProcessHeap(), 0, (length + 1) * sizeof(WCHAR));
            if (!lpBuffer) goto error;
            length = SendMessageW(lphc->hWndLBox, LB_GETTEXT, idx, (LPARAM)lpBuffer);


            if (length != LB_ERR)
            {
                lstrcpynW( buf, lpBuffer, count );
                length = count;
            }
            HeapFree( GetProcessHeap(), 0, lpBuffer );
        }
        else length = SendMessageW(lphc->hWndLBox, LB_GETTEXT, idx, (LPARAM)buf);

        if (length == LB_ERR) return 0;
        return length;
    }

 error:
    buf[0] = 0;
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__* LPSTR ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef int BOOL ;


 int CB_GETCURSEL ;
 int CB_GETLBTEXT ;
 int CB_GETLBTEXTLEN ;
 int CP_ACP ;
 int FALSE ;
 int GetDlgItem (int ,scalar_t__) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 scalar_t__ LB_ERR ;
 int LB_GETCURSEL ;
 int LB_GETTEXT ;
 int LB_GETTEXTLEN ;
 scalar_t__ SendMessageW (int ,int ,scalar_t__,int ) ;
 int TRACE (char*,int,int ,...) ;
 int WideCharToMultiByte (int ,int ,char*,int,scalar_t__*,scalar_t__,int ,int ) ;
 int debugstr_a (scalar_t__*) ;
 int debugstr_w (scalar_t__) ;
 int lstrcpynW (scalar_t__,char*,scalar_t__) ;
 int * strchrW (char*,char) ;
 size_t strlenW (char*) ;

__attribute__((used)) static BOOL DIALOG_DlgDirSelect( HWND hwnd, LPWSTR str, INT len,
                                 INT id, BOOL unicode, BOOL combo )
{
    WCHAR *buffer, *ptr;
    INT item, size;
    BOOL ret;
    HWND listbox = GetDlgItem( hwnd, id );

    TRACE("%p %s %d\n", hwnd, unicode ? debugstr_w(str) : debugstr_a((LPSTR)str), id );
    if (!listbox) return FALSE;

    item = SendMessageW(listbox, combo ? CB_GETCURSEL : LB_GETCURSEL, 0, 0 );
    if (item == LB_ERR) return FALSE;

    size = SendMessageW(listbox, combo ? CB_GETLBTEXTLEN : LB_GETTEXTLEN, item, 0 );
    if (size == LB_ERR) return FALSE;

    if (!(buffer = HeapAlloc( GetProcessHeap(), 0, (size+2) * sizeof(WCHAR) ))) return FALSE;

    SendMessageW( listbox, combo ? CB_GETLBTEXT : LB_GETTEXT, item, (LPARAM)buffer );

    if ((ret = (buffer[0] == '[')))
    {
        if (buffer[1] == '-')
        {
            buffer[3] = ':';
            buffer[4] = 0;
            ptr = buffer + 2;
        }
        else
        {
            buffer[strlenW(buffer)-1] = '\\';
            ptr = buffer + 1;
        }
    }
    else
    {

        if (strchrW(buffer, '.') == ((void*)0))
        {
            buffer[strlenW(buffer)+1] = '\0';
            buffer[strlenW(buffer)] = '.';
        }
        ptr = buffer;
    }

    if (!unicode)
    {
        if (len > 0 && !WideCharToMultiByte( CP_ACP, 0, ptr, -1, (LPSTR)str, len, 0, 0 ))
            ((LPSTR)str)[len-1] = 0;
    }
    else lstrcpynW( str, ptr, len );
    HeapFree( GetProcessHeap(), 0, buffer );
    TRACE("Returning %d %s\n", ret, unicode ? debugstr_w(str) : debugstr_a((LPSTR)str) );
    return ret;
}

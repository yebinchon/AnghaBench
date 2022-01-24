#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ LPWSTR ;
typedef  scalar_t__* LPSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CB_GETCURSEL ; 
 int /*<<< orphan*/  CB_GETLBTEXT ; 
 int /*<<< orphan*/  CB_GETLBTEXTLEN ; 
 int /*<<< orphan*/  CP_ACP ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_GETCURSEL ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int /*<<< orphan*/  LB_GETTEXTLEN ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char) ; 
 size_t FUNC11 (char*) ; 

__attribute__((used)) static BOOL FUNC12( HWND hwnd, LPWSTR str, INT len,
                                 INT id, BOOL unicode, BOOL combo )
{
    WCHAR *buffer, *ptr;
    INT item, size;
    BOOL ret;
    HWND listbox = FUNC0( hwnd, id );

    FUNC5("%p %s %d\n", hwnd, unicode ? FUNC8(str) : FUNC7((LPSTR)str), id );
    if (!listbox) return FALSE;

    item = FUNC4(listbox, combo ? CB_GETCURSEL : LB_GETCURSEL, 0, 0 );
    if (item == LB_ERR) return FALSE;

    size = FUNC4(listbox, combo ? CB_GETLBTEXTLEN : LB_GETTEXTLEN, item, 0 );
    if (size == LB_ERR) return FALSE;

    if (!(buffer = FUNC2( FUNC1(), 0, (size+2) * sizeof(WCHAR) ))) return FALSE;

    FUNC4( listbox, combo ? CB_GETLBTEXT : LB_GETTEXT, item, (LPARAM)buffer );

    if ((ret = (buffer[0] == '[')))  /* drive or directory */
    {
        if (buffer[1] == '-')  /* drive */
        {
            buffer[3] = ':';
            buffer[4] = 0;
            ptr = buffer + 2;
        }
        else
        {
            buffer[FUNC11(buffer)-1] = '\\';
            ptr = buffer + 1;
        }
    }
    else
    {
        /* Filenames without a dot extension must have one tacked at the end */
        if (FUNC10(buffer, '.') == NULL)
        {
            buffer[FUNC11(buffer)+1] = '\0';
            buffer[FUNC11(buffer)] = '.';
        }
        ptr = buffer;
    }

    if (!unicode)
    {
        if (len > 0 && !FUNC6( CP_ACP, 0, ptr, -1, (LPSTR)str, len, 0, 0 ))
            ((LPSTR)str)[len-1] = 0;
    }
    else FUNC9( str, ptr, len );
    FUNC3( FUNC1(), 0, buffer );
    FUNC5("Returning %d %s\n", ret, unicode ? FUNC8(str) : FUNC7((LPSTR)str) );
    return ret;
}
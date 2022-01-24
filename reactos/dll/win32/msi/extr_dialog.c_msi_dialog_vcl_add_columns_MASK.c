#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msi_dialog ;
struct TYPE_5__ {int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ msi_control ;
typedef  int /*<<< orphan*/  lvc ;
typedef  char WCHAR ;
struct TYPE_6__ {int mask; char* pszText; int /*<<< orphan*/  cx; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_2__ LVCOLUMNW ;
typedef  int LPCWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int DWORD ;

/* Variables and functions */
 int LVCF_SUBITEM ; 
 int LVCF_TEXT ; 
 int LVCF_WIDTH ; 
 int /*<<< orphan*/  LVM_INSERTCOLUMNW ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * column_keys ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 char* FUNC5 (int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int) ; 
 int /*<<< orphan*/  szZero ; 

__attribute__((used)) static void FUNC12( msi_dialog *dialog, msi_control *control, MSIRECORD *rec )
{
    LPCWSTR text = FUNC0( rec, 10 );
    LPCWSTR begin = text, end;
    WCHAR *num;
    LVCOLUMNW lvc;
    DWORD count = 0;

    static const WCHAR negative[] = {'-',0};

    if (!text) return;

    while ((begin = FUNC9( begin, '{' )) && count < 5)
    {
        if (!(end = FUNC9( begin, '}' )))
            return;

        num = FUNC5( (end-begin+1)*sizeof(WCHAR) );
        if (!num)
            return;

        FUNC4( num, begin + 1, end - begin );
        begin += end - begin + 1;

        /* empty braces or '0' hides the column */ 
        if ( !num[0] || !FUNC10( num, szZero ) )
        {
            count++;
            FUNC7( num );
            continue;
        }

        /* the width must be a positive number
         * if a width is invalid, all remaining columns are hidden
         */
        if ( !FUNC11( num, negative, 1 ) || !FUNC8( num ) ) {
            FUNC7( num );
            return;
        }

        FUNC2( &lvc, sizeof(lvc) );
        lvc.mask = LVCF_TEXT | LVCF_WIDTH | LVCF_SUBITEM;
        lvc.cx = FUNC3( num );
        lvc.pszText = FUNC6( dialog, column_keys[count] );

        FUNC1( control->hwnd,  LVM_INSERTCOLUMNW, count++, (LPARAM)&lvc );
        FUNC7( lvc.pszText );
        FUNC7( num );
    }
}
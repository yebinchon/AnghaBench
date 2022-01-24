#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  expect ;
typedef  int /*<<< orphan*/  data ;
typedef  char WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {int member_1; int member_5; int member_6; scalar_t__ iBitmap; int idCommand; scalar_t__ fsState; scalar_t__ fsStyle; scalar_t__ dwData; scalar_t__ iString; TYPE_1__ member_4; int /*<<< orphan*/  const member_3; int /*<<< orphan*/  const member_2; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {char const* pszSubKey; char const* pszValueName; int /*<<< orphan*/  hkr; } ;
typedef  TYPE_2__ TBSAVEPARAMSW ;
typedef  TYPE_3__ TBBUTTON ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int LONG ;
typedef  scalar_t__ INT_PTR ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (TYPE_3__ const*) ; 
#define  BTNS_BUTTON 130 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  NUM_MSG_SEQUENCES ; 
 int /*<<< orphan*/  PARENT_SEQ_INDEX ; 
 int REG_BINARY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
#define  TBSTATE_ENABLED 129 
#define  TBSTATE_HIDDEN 128 
 int /*<<< orphan*/  TB_ADDBUTTONSW ; 
 int /*<<< orphan*/  TB_BUTTONCOUNT ; 
 int /*<<< orphan*/  TB_GETBUTTON ; 
 int /*<<< orphan*/  TB_SAVERESTOREW ; 
 int TRUE ; 
 scalar_t__ alloced_str ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  restore_parent_seq ; 
 int /*<<< orphan*/  save_parent_seq ; 
 int /*<<< orphan*/  sequences ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    HWND wnd = NULL;
    TBSAVEPARAMSW params;
    static const WCHAR subkey[] = {'S','o','f','t','w','a','r','e','\\','W','i','n','e','\\',
                                   'W','i','n','e','T','e','s','t',0};
    static const WCHAR value[] = {'t','o','o','l','b','a','r','t','e','s','t',0};
    LONG res;
    HKEY key;
    BYTE data[100];
    DWORD size = sizeof(data), type, i, count;
    TBBUTTON tb;
    static const TBBUTTON more_btns[2] =
        {
            {0, 11, TBSTATE_HIDDEN, BTNS_BUTTON, 0, 0, -1},
            {0, 13, TBSTATE_ENABLED, BTNS_BUTTON, 0, 0, -1}
        };
    static const DWORD expect[] = {0xcafe, 1, 0xcafe0000, 3, 0xcafe0001, 5, 0xcafe0002, 7, 0xcafe0003,
                                   9, 0xcafe0004, 11, 0xcafe0005, 13, 0xcafe0006, 0xffffffff, 0xcafe0007,
                                   0xfffffffe, 0xcafe0008, 0x80000000, 0xcafe0009, 0x7fffffff, 0xcafe000a,
                                   0x100, 0xcafe000b};
    static const TBBUTTON expect_btns[] =
    {
        {0, 1, TBSTATE_ENABLED, BTNS_BUTTON, 0, 0, 0},
        {0, 3, TBSTATE_ENABLED, BTNS_BUTTON, 0, 1, 2},
        {0, 5, TBSTATE_ENABLED, BTNS_BUTTON, 0, 2, 0},
        {0, 7, 0, BTNS_BUTTON, 0, 0, (INT_PTR)"foo"},
        {0, 9, 0, BTNS_BUTTON, 0, 0, 0},
        {0, 11, 0, BTNS_BUTTON, 0, 0, 3},
        {0, 13, TBSTATE_ENABLED, BTNS_BUTTON, 0, 6, 0},
        {0, 0, TBSTATE_ENABLED, BTNS_BUTTON, 0, 7, 0},
        {0, 0, TBSTATE_ENABLED, BTNS_BUTTON, 0, 8, 0},
        {0, 0, TBSTATE_ENABLED, BTNS_BUTTON, 0, 9, 0},
        {0, 0x7fffffff, TBSTATE_ENABLED, BTNS_BUTTON, 0, 0xa, 0},
    };

    params.hkr = HKEY_CURRENT_USER;
    params.pszSubKey = subkey;
    params.pszValueName = value;

    FUNC13( &wnd );
    FUNC7(wnd, TB_ADDBUTTONSW, FUNC0(more_btns), (LPARAM)more_btns);

    FUNC8(sequences, NUM_MSG_SEQUENCES);
    res = FUNC7( wnd, TB_SAVERESTOREW, TRUE, (LPARAM)&params );
    FUNC10( res, "saving failed\n" );
    FUNC11(sequences, PARENT_SEQ_INDEX, save_parent_seq, "save", FALSE);
    FUNC1( wnd );

    res = FUNC5( HKEY_CURRENT_USER, subkey, &key );
    FUNC10( !res, "got %08x\n", res );
    res = FUNC6( key, value, NULL, &type, data, &size );
    FUNC10( !res, "got %08x\n", res );
    FUNC10( type == REG_BINARY, "got %08x\n", type );
    FUNC10( size == sizeof(expect), "got %08x\n", size );
    FUNC10( !FUNC9( data, expect, size ), "mismatch\n" );

    FUNC3( key );

    wnd = NULL;
    FUNC12( &wnd );

    FUNC8(sequences, NUM_MSG_SEQUENCES);
    res = FUNC7( wnd, TB_SAVERESTOREW, FALSE, (LPARAM)&params );
    FUNC10( res, "restoring failed\n" );
    FUNC11(sequences, PARENT_SEQ_INDEX, restore_parent_seq, "restore", FALSE);
    count = FUNC7( wnd, TB_BUTTONCOUNT, 0, 0 );
    FUNC10( count == FUNC0(expect_btns), "got %d\n", count );

    for (i = 0; i < count; i++)
    {
        res = FUNC7( wnd, TB_GETBUTTON, i, (LPARAM)&tb );
        FUNC10( res, "got %d\n", res );

        FUNC10( tb.iBitmap == expect_btns[i].iBitmap, "%d: got %d\n", i, tb.iBitmap );
        FUNC10( tb.idCommand == expect_btns[i].idCommand, "%d: got %d\n", i, tb.idCommand );
        FUNC10( tb.fsState == expect_btns[i].fsState, "%d: got %02x\n", i, tb.fsState );
        FUNC10( tb.fsStyle == expect_btns[i].fsStyle, "%d: got %02x\n", i, tb.fsStyle );
        FUNC10( tb.dwData == expect_btns[i].dwData, "%d: got %lx\n", i, tb.dwData );
        if (FUNC2(expect_btns[i].iString))
            FUNC10( tb.iString == expect_btns[i].iString, "%d: got %lx\n", i, tb.iString );
        else
            FUNC10( !FUNC14( (char *)tb.iString, (char *)expect_btns[i].iString ),
                "%d: got %s\n", i, (char *)tb.iString );

        /* In fact the ptr value set in TBN_GETBUTTONINFOA is simply copied */
        if (tb.idCommand == 7)
            FUNC10( tb.iString == (INT_PTR)alloced_str, "string not set\n");
    }

    FUNC1( wnd );
    FUNC5( HKEY_CURRENT_USER, subkey, &key );
    FUNC4( key, value );
    FUNC3( key );
}
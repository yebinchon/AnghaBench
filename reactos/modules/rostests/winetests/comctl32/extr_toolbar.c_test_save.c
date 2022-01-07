
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int expect ;
typedef int data ;
typedef char WCHAR ;
struct TYPE_5__ {int member_0; } ;
struct TYPE_7__ {int member_1; int member_5; int member_6; scalar_t__ iBitmap; int idCommand; scalar_t__ fsState; scalar_t__ fsStyle; scalar_t__ dwData; scalar_t__ iString; TYPE_1__ member_4; int const member_3; int const member_2; int member_0; } ;
struct TYPE_6__ {char const* pszSubKey; char const* pszValueName; int hkr; } ;
typedef TYPE_2__ TBSAVEPARAMSW ;
typedef TYPE_3__ TBBUTTON ;
typedef int LPARAM ;
typedef int LONG ;
typedef scalar_t__ INT_PTR ;
typedef int * HWND ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 int ARRAY_SIZE (TYPE_3__ const*) ;

 int DestroyWindow (int *) ;
 int FALSE ;
 int HKEY_CURRENT_USER ;
 scalar_t__ IS_INTRESOURCE (scalar_t__) ;
 int NUM_MSG_SEQUENCES ;
 int PARENT_SEQ_INDEX ;
 int REG_BINARY ;
 int RegCloseKey (int ) ;
 int RegDeleteValueW (int ,char const*) ;
 int RegOpenKeyW (int ,char const*,int *) ;
 int RegQueryValueExW (int ,char const*,int *,int*,int *,int*) ;
 int SendMessageW (int *,int ,int,int ) ;


 int TB_ADDBUTTONSW ;
 int TB_BUTTONCOUNT ;
 int TB_GETBUTTON ;
 int TB_SAVERESTOREW ;
 int TRUE ;
 scalar_t__ alloced_str ;
 int flush_sequences (int ,int ) ;
 int memcmp (int *,int const*,int) ;
 int ok (int,char*,...) ;
 int ok_sequence (int ,int ,int ,char*,int) ;
 int rebuild_toolbar (int **) ;
 int rebuild_toolbar_with_buttons (int **) ;
 int restore_parent_seq ;
 int save_parent_seq ;
 int sequences ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void test_save(void)
{
    HWND wnd = ((void*)0);
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
            {0, 11, 128, 130, {0}, 0, -1},
            {0, 13, 129, 130, {0}, 0, -1}
        };
    static const DWORD expect[] = {0xcafe, 1, 0xcafe0000, 3, 0xcafe0001, 5, 0xcafe0002, 7, 0xcafe0003,
                                   9, 0xcafe0004, 11, 0xcafe0005, 13, 0xcafe0006, 0xffffffff, 0xcafe0007,
                                   0xfffffffe, 0xcafe0008, 0x80000000, 0xcafe0009, 0x7fffffff, 0xcafe000a,
                                   0x100, 0xcafe000b};
    static const TBBUTTON expect_btns[] =
    {
        {0, 1, 129, 130, {0}, 0, 0},
        {0, 3, 129, 130, {0}, 1, 2},
        {0, 5, 129, 130, {0}, 2, 0},
        {0, 7, 0, 130, {0}, 0, (INT_PTR)"foo"},
        {0, 9, 0, 130, {0}, 0, 0},
        {0, 11, 0, 130, {0}, 0, 3},
        {0, 13, 129, 130, {0}, 6, 0},
        {0, 0, 129, 130, {0}, 7, 0},
        {0, 0, 129, 130, {0}, 8, 0},
        {0, 0, 129, 130, {0}, 9, 0},
        {0, 0x7fffffff, 129, 130, {0}, 0xa, 0},
    };

    params.hkr = HKEY_CURRENT_USER;
    params.pszSubKey = subkey;
    params.pszValueName = value;

    rebuild_toolbar_with_buttons( &wnd );
    SendMessageW(wnd, TB_ADDBUTTONSW, ARRAY_SIZE(more_btns), (LPARAM)more_btns);

    flush_sequences(sequences, NUM_MSG_SEQUENCES);
    res = SendMessageW( wnd, TB_SAVERESTOREW, TRUE, (LPARAM)&params );
    ok( res, "saving failed\n" );
    ok_sequence(sequences, PARENT_SEQ_INDEX, save_parent_seq, "save", FALSE);
    DestroyWindow( wnd );

    res = RegOpenKeyW( HKEY_CURRENT_USER, subkey, &key );
    ok( !res, "got %08x\n", res );
    res = RegQueryValueExW( key, value, ((void*)0), &type, data, &size );
    ok( !res, "got %08x\n", res );
    ok( type == REG_BINARY, "got %08x\n", type );
    ok( size == sizeof(expect), "got %08x\n", size );
    ok( !memcmp( data, expect, size ), "mismatch\n" );

    RegCloseKey( key );

    wnd = ((void*)0);
    rebuild_toolbar( &wnd );

    flush_sequences(sequences, NUM_MSG_SEQUENCES);
    res = SendMessageW( wnd, TB_SAVERESTOREW, FALSE, (LPARAM)&params );
    ok( res, "restoring failed\n" );
    ok_sequence(sequences, PARENT_SEQ_INDEX, restore_parent_seq, "restore", FALSE);
    count = SendMessageW( wnd, TB_BUTTONCOUNT, 0, 0 );
    ok( count == ARRAY_SIZE(expect_btns), "got %d\n", count );

    for (i = 0; i < count; i++)
    {
        res = SendMessageW( wnd, TB_GETBUTTON, i, (LPARAM)&tb );
        ok( res, "got %d\n", res );

        ok( tb.iBitmap == expect_btns[i].iBitmap, "%d: got %d\n", i, tb.iBitmap );
        ok( tb.idCommand == expect_btns[i].idCommand, "%d: got %d\n", i, tb.idCommand );
        ok( tb.fsState == expect_btns[i].fsState, "%d: got %02x\n", i, tb.fsState );
        ok( tb.fsStyle == expect_btns[i].fsStyle, "%d: got %02x\n", i, tb.fsStyle );
        ok( tb.dwData == expect_btns[i].dwData, "%d: got %lx\n", i, tb.dwData );
        if (IS_INTRESOURCE(expect_btns[i].iString))
            ok( tb.iString == expect_btns[i].iString, "%d: got %lx\n", i, tb.iString );
        else
            ok( !strcmp( (char *)tb.iString, (char *)expect_btns[i].iString ),
                "%d: got %s\n", i, (char *)tb.iString );


        if (tb.idCommand == 7)
            ok( tb.iString == (INT_PTR)alloced_str, "string not set\n");
    }

    DestroyWindow( wnd );
    RegOpenKeyW( HKEY_CURRENT_USER, subkey, &key );
    RegDeleteValueW( key, value );
    RegCloseKey( key );
}

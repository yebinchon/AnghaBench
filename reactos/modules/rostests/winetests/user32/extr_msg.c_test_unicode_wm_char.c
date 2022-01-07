
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct message {int message; int flags; int wParam; } ;
typedef int seq ;
typedef int cp ;
typedef int WCHAR ;
struct TYPE_6__ {int message; int hwnd; int wParam; int lParam; } ;
typedef TYPE_1__ MSG ;
typedef int LCID ;
typedef int HWND ;
typedef scalar_t__ HKL ;
typedef int DWORD ;


 int ActivateKeyboardLayout (scalar_t__,int ) ;
 int CreateWindowExW (int ,int ,int *,int ,int,int,int,int,int ,int ,int ,int *) ;
 int DestroyWindow (int) ;
 int DispatchMessageA (TYPE_1__*) ;
 int DispatchMessageW (TYPE_1__*) ;
 int FALSE ;
 scalar_t__ GetKeyboardLayout (int ) ;
 int GetLocaleInfoW (int ,int,int *,int) ;
 int GetMessageA (TYPE_1__*,int,int ,int ) ;
 scalar_t__ GetMessageW (TYPE_1__*,int,int ,int ) ;
 int GetThreadLocale () ;
 int LOCALE_IDEFAULTANSICODEPAGE ;
 int LOCALE_RETURN_NUMBER ;
 int LOWORD (scalar_t__) ;
 scalar_t__ LoadKeyboardLayoutA (char*,int ) ;
 int PostMessageW (int,int,int,int ) ;
 int UnloadKeyboardLayout (scalar_t__) ;
 int WM_CHAR ;
 int WS_OVERLAPPEDWINDOW ;
 int flush_sequence () ;
 int ignore_message (int) ;
 int memset (struct message*,int ,int) ;
 int ok (int,char*,...) ;
 int ok_sequence (struct message*,char*,int ) ;
 int sent ;
 int skip (char*,...) ;
 int testWindowClassW ;
 int wparam ;

__attribute__((used)) static void test_unicode_wm_char(void)
{
    HWND hwnd;
    MSG msg;
    struct message seq[2];
    HKL hkl_orig, hkl_greek;
    DWORD cp;
    LCID thread_locale;

    hkl_orig = GetKeyboardLayout( 0 );
    GetLocaleInfoW( LOWORD( hkl_orig ), LOCALE_IDEFAULTANSICODEPAGE | LOCALE_RETURN_NUMBER, (WCHAR*)&cp, sizeof(cp) / sizeof(WCHAR) );
    if (cp != 1252)
    {
        skip( "Default codepage %d\n", cp );
        return;
    }

    hkl_greek = LoadKeyboardLayoutA( "00000408", 0 );
    if (!hkl_greek || hkl_greek == hkl_orig )
    {
        skip( "Unable to load Greek keyboard layout\n" );
        return;
    }

    hwnd = CreateWindowExW( 0, testWindowClassW, ((void*)0), WS_OVERLAPPEDWINDOW,
                            100, 100, 200, 200, 0, 0, 0, ((void*)0) );
    flush_sequence();

    PostMessageW( hwnd, WM_CHAR, 0x3b1, 0 );

    while (GetMessageW( &msg, hwnd, 0, 0 ))
    {
        if (!ignore_message( msg.message )) break;
    }

    ok( msg.hwnd == hwnd, "unexpected hwnd %p\n", msg.hwnd );
    ok( msg.message == WM_CHAR, "unexpected message %x\n", msg.message );
    ok( msg.wParam == 0x3b1, "bad wparam %lx\n", msg.wParam );
    ok( msg.lParam == 0, "bad lparam %lx\n", msg.lParam );

    DispatchMessageW( &msg );

    memset( seq, 0, sizeof(seq) );
    seq[0].message = WM_CHAR;
    seq[0].flags = sent|wparam;
    seq[0].wParam = 0x3b1;

    ok_sequence( seq, "unicode WM_CHAR", FALSE );

    flush_sequence();


    PostMessageW( hwnd, WM_CHAR, 0x3b1, 0 );

    ok( GetMessageA( &msg, hwnd, 0, 0 ), "no message\n" );
    ok( msg.hwnd == hwnd, "unexpected hwnd %p\n", msg.hwnd );
    ok( msg.message == WM_CHAR, "unexpected message %x\n", msg.message );
    ok( msg.wParam == 0x61, "bad wparam %lx\n", msg.wParam );
    ok( msg.lParam == 0, "bad lparam %lx\n", msg.lParam );

    DispatchMessageA( &msg );

    seq[0].wParam = 0x61;
    ok_sequence( seq, "unicode WM_CHAR", FALSE );

    thread_locale = GetThreadLocale();
    ActivateKeyboardLayout( hkl_greek, 0 );
    ok( GetThreadLocale() == thread_locale, "locale changed from %08x to %08x\n",
        thread_locale, GetThreadLocale() );

    flush_sequence();


    PostMessageW( hwnd, WM_CHAR, 0x3b1, 0 );

    ok( GetMessageA( &msg, hwnd, 0, 0 ), "no message\n" );
    ok( msg.hwnd == hwnd, "unexpected hwnd %p\n", msg.hwnd );
    ok( msg.message == WM_CHAR, "unexpected message %x\n", msg.message );
    ok( msg.wParam == 0xe1, "bad wparam %lx\n", msg.wParam );
    ok( msg.lParam == 0, "bad lparam %lx\n", msg.lParam );

    DispatchMessageA( &msg );

    seq[0].wParam = 0x3b1;
    ok_sequence( seq, "unicode WM_CHAR", FALSE );

    DestroyWindow( hwnd );
    ActivateKeyboardLayout( hkl_orig, 0 );
    UnloadKeyboardLayout( hkl_greek );
}

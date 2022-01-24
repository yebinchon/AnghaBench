#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct message {int message; int flags; int wParam; } ;
typedef  int /*<<< orphan*/  seq ;
typedef  int /*<<< orphan*/  cp ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int message; int hwnd; int wParam; int lParam; } ;
typedef  TYPE_1__ MSG ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int HWND ;
typedef  scalar_t__ HKL ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int LOCALE_IDEFAULTANSICODEPAGE ; 
 int LOCALE_RETURN_NUMBER ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int WM_CHAR ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct message*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct message*,char*,int /*<<< orphan*/ ) ; 
 int sent ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  testWindowClassW ; 
 int wparam ; 

__attribute__((used)) static void FUNC20(void)
{
    HWND hwnd;
    MSG msg;
    struct message seq[2];
    HKL hkl_orig, hkl_greek;
    DWORD cp;
    LCID thread_locale;

    hkl_orig = FUNC5( 0 );
    FUNC6( FUNC10( hkl_orig ), LOCALE_IDEFAULTANSICODEPAGE | LOCALE_RETURN_NUMBER, (WCHAR*)&cp, sizeof(cp) / sizeof(WCHAR) );
    if (cp != 1252)
    {
        FUNC19( "Default codepage %d\n", cp );
        return;
    }

    hkl_greek = FUNC11( "00000408", 0 );
    if (!hkl_greek || hkl_greek == hkl_orig /* win2k */)
    {
        FUNC19( "Unable to load Greek keyboard layout\n" );
        return;
    }

    hwnd = FUNC1( 0, testWindowClassW, NULL, WS_OVERLAPPEDWINDOW,
                            100, 100, 200, 200, 0, 0, 0, NULL );
    FUNC14();

    FUNC12( hwnd, WM_CHAR, 0x3b1, 0 );

    while (FUNC8( &msg, hwnd, 0, 0 ))
    {
        if (!FUNC15( msg.message )) break;
    }

    FUNC17( msg.hwnd == hwnd, "unexpected hwnd %p\n", msg.hwnd );
    FUNC17( msg.message == WM_CHAR, "unexpected message %x\n", msg.message );
    FUNC17( msg.wParam == 0x3b1, "bad wparam %lx\n", msg.wParam );
    FUNC17( msg.lParam == 0, "bad lparam %lx\n", msg.lParam );

    FUNC4( &msg );

    FUNC16( seq, 0, sizeof(seq) );
    seq[0].message = WM_CHAR;
    seq[0].flags = sent|wparam;
    seq[0].wParam = 0x3b1;

    FUNC18( seq, "unicode WM_CHAR", FALSE );

    FUNC14();

    /* greek alpha -> 'a' in cp1252 */
    FUNC12( hwnd, WM_CHAR, 0x3b1, 0 );

    FUNC17( FUNC7( &msg, hwnd, 0, 0 ), "no message\n" );
    FUNC17( msg.hwnd == hwnd, "unexpected hwnd %p\n", msg.hwnd );
    FUNC17( msg.message == WM_CHAR, "unexpected message %x\n", msg.message );
    FUNC17( msg.wParam == 0x61, "bad wparam %lx\n", msg.wParam );
    FUNC17( msg.lParam == 0, "bad lparam %lx\n", msg.lParam );

    FUNC3( &msg );

    seq[0].wParam = 0x61;
    FUNC18( seq, "unicode WM_CHAR", FALSE );

    thread_locale = FUNC9();
    FUNC0( hkl_greek, 0 );
    FUNC17( FUNC9() == thread_locale, "locale changed from %08x to %08x\n",
        thread_locale, FUNC9() );

    FUNC14();

    /* greek alpha -> 0xe1 in cp1253 */
    FUNC12( hwnd, WM_CHAR, 0x3b1, 0 );

    FUNC17( FUNC7( &msg, hwnd, 0, 0 ), "no message\n" );
    FUNC17( msg.hwnd == hwnd, "unexpected hwnd %p\n", msg.hwnd );
    FUNC17( msg.message == WM_CHAR, "unexpected message %x\n", msg.message );
    FUNC17( msg.wParam == 0xe1, "bad wparam %lx\n", msg.wParam );
    FUNC17( msg.lParam == 0, "bad lparam %lx\n", msg.lParam );

    FUNC3( &msg );

    seq[0].wParam = 0x3b1;
    FUNC18( seq, "unicode WM_CHAR", FALSE );

    FUNC2( hwnd );
    FUNC0( hkl_orig, 0 );
    FUNC13( hkl_greek );
}
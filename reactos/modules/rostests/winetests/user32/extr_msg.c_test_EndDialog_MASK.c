#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* lpszClassName; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  lpfnWndProc; } ;
typedef  TYPE_1__ WNDCLASSA ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,int,int,int,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int WS_CAPTION ; 
 int WS_CHILD ; 
 int WS_DISABLED ; 
 int WS_DLGFRAME ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_POPUP ; 
 int WS_SYSMENU ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int,char*,...) ; 
 int /*<<< orphan*/  test_dlg_proc ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC22(void)
{
    HWND hparent, hother, hactive, hdlg, hchild;
    WNDCLASSA cls;

    hparent = FUNC1(0, "TestParentClass", "Test parent",
                              WS_OVERLAPPEDWINDOW | WS_VISIBLE | WS_DISABLED,
                              100, 100, 200, 200, 0, 0, 0, NULL);
    FUNC19 (hparent != 0, "Failed to create parent window\n");

    hother = FUNC1(0, "TestParentClass", "Test parent 2",
                              WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                              200, 100, 200, 200, 0, 0, 0, NULL);
    FUNC19 (hother != 0, "Failed to create parent window\n");

    FUNC19(FUNC6(0, "#32770", &cls), "GetClassInfo failed\n");
    cls.lpszClassName = "MyDialogClass";
    cls.hInstance = FUNC8(NULL);
    cls.lpfnWndProc = test_dlg_proc;
    if (!FUNC12(&cls)) FUNC17(0);

    FUNC18();
    FUNC13(hother);
    hactive = FUNC7();
    FUNC19(hother == hactive, "Wrong window has focus (%p != %p)\n", hother, hactive);

    /* create a dialog where the parent is disabled, this parent should be
     * enabled and receive focus when dialog exits */
    hdlg = FUNC0(0, "CLASS_TEST_DIALOG_2", hparent, test_dlg_proc, 0);
    FUNC19(FUNC10(hdlg), "CreateDialogParam failed\n");
    FUNC13(hdlg);
    hactive = FUNC7();
    FUNC19(hdlg == hactive, "Wrong window has focus (%p != %p)\n", hdlg, hactive);
    FUNC4(hdlg, 0);
    FUNC19(FUNC11(hparent), "parent is not enabled\n");
    hactive = FUNC7();
    FUNC19(hparent == hactive, "Wrong window has focus (parent != active) (active: %p, parent: %p, dlg: %p, other: %p)\n", hactive, hparent, hdlg, hother);
    FUNC2(hdlg);
    FUNC18();

    /* create a dialog where the parent is disabled and set active window to other window before calling EndDialog */
    FUNC3(hparent, FALSE);
    hdlg = FUNC1(0, "TestDialogClass", NULL,
                          WS_VISIBLE|WS_CAPTION|WS_SYSMENU|WS_DLGFRAME,
                          0, 0, 100, 100, hparent, 0, 0, NULL);
    FUNC19(FUNC10(hdlg), "CreateDialogParam failed\n");
    FUNC18();
    FUNC13(hother);
    FUNC18();
    hactive = FUNC7();
    FUNC19(hactive == hother, "Wrong foreground (%p != %p)\n", hactive, hother);
    hactive = FUNC5();
    FUNC19(hactive == hother, "Wrong active window (%p != %p)\n", hactive, hother);
    FUNC4(hdlg, 0);
    FUNC19(FUNC11(hparent), "parent is not enabled\n");
    hactive = FUNC7();
    FUNC19(hother == hactive, "Wrong window has focus (other != active) (active: %p, parent: %p, dlg: %p, other: %p)\n", hactive, hparent, hdlg, hother);
    FUNC2(hdlg);
    FUNC18();

    FUNC2( hparent );

    hparent = FUNC1(0, "TestParentClass", "Test parent",
                              WS_POPUP | WS_VISIBLE | WS_DISABLED,
                              100, 100, 200, 200, 0, 0, 0, NULL);
    FUNC19 (hparent != 0, "Failed to create parent window\n");

    hchild = FUNC1(0, "TestWindowClass", "Test child",
                             WS_OVERLAPPEDWINDOW | WS_VISIBLE | WS_DISABLED,
                             0, 0, 0, 0, 0, 0, 0, NULL);
    FUNC19 (hchild != 0, "Failed to create child window\n");

    FUNC14(hchild, hparent);

    FUNC18();
    FUNC13(hother);
    hactive = FUNC7();
    FUNC19(hother == hactive, "Wrong foreground window (%p != %p)\n", hother, hactive);

    hdlg = FUNC0(0, "CLASS_TEST_DIALOG_2", hchild, test_dlg_proc, 0);
    FUNC19(FUNC10(hdlg), "CreateDialogParam failed\n");

    FUNC13(hdlg);
    FUNC20(hdlg, hchild);

    hactive = FUNC7();
    FUNC19(hactive == hchild, "Wrong foreground window (active: %p, parent: %p, dlg: %p, other: %p child: %p)\n", hactive, hparent, hdlg, hother, hchild);

    FUNC2(hdlg);

    /* Now set WS_CHILD style flag so that it's a real child and its parent will be dialog's owner. */
    FUNC15(hchild, GWL_STYLE, FUNC9(hchild, GWL_STYLE) | WS_CHILD);

    FUNC13(hother);
    hactive = FUNC7();
    FUNC19(hother == hactive, "Wrong foreground window (%p != %p)\n", hother, hactive);

    hdlg = FUNC0(0, "CLASS_TEST_DIALOG_2", hchild, test_dlg_proc, 0);
    FUNC19(FUNC10(hdlg), "CreateDialogParam failed\n");

    FUNC13(hdlg);
    FUNC21(hdlg, hparent);

    hactive = FUNC7();
    FUNC19(hactive == hparent, "Wrong foreground window (active: %p, parent: %p, dlg: %p, other: %p child: %p)\n", hactive, hparent, hdlg, hother, hchild);
    FUNC2(hdlg);
    FUNC2(hchild);
    FUNC2(hparent);
    FUNC2(hother);
    FUNC18();

    FUNC16(cls.lpszClassName, cls.hInstance);
}
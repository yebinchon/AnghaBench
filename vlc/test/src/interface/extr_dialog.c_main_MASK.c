#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pf_update_progress; int /*<<< orphan*/  pf_cancel; int /*<<< orphan*/  pf_display_progress; int /*<<< orphan*/  pf_display_question; int /*<<< orphan*/  pf_display_login; int /*<<< orphan*/  pf_display_error; } ;
typedef  TYPE_1__ vlc_dialog_cbs ;
struct cb_answer {int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {int /*<<< orphan*/  p_libvlc_int; } ;
typedef  TYPE_2__ libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  cancel_cb ; 
 int /*<<< orphan*/  display_error_cb ; 
 int /*<<< orphan*/  display_login_cb ; 
 int /*<<< orphan*/  display_progress_cb ; 
 int /*<<< orphan*/  display_question_cb ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC4 (int,char const**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct cb_answer*,int) ; 
 int /*<<< orphan*/  update_progress_cb ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__ const*,struct cb_answer*) ; 

int
FUNC11(int i_argc, char *ppsz_argv[])
{
    bool b_test_all = i_argc > 1 && FUNC8(ppsz_argv[1], "-a") == 0;

    if (!b_test_all)
        FUNC1(10);

    FUNC7("VLC_PLUGIN_PATH", "../modules", 1);
    FUNC7("VLC_LIB_PATH", "../modules", 1);

    libvlc_instance_t *p_libvlc = FUNC4(0, NULL);
    FUNC2(p_libvlc != NULL);

    FUNC6("testing dialog callbacks\n");
    const vlc_dialog_cbs cbs = {
        .pf_display_error = display_error_cb,
        .pf_display_login = display_login_cb,
        .pf_display_question = display_question_cb,
        .pf_display_progress = display_progress_cb,
        .pf_cancel = cancel_cb,
        .pf_update_progress = update_progress_cb,
    };
    struct cb_answer ans = { 0 };
    FUNC10(p_libvlc->p_libvlc_int, &cbs, &ans);
    FUNC9(FUNC0(p_libvlc->p_libvlc_int), &ans, 100000);
    FUNC10(p_libvlc->p_libvlc_int, NULL, NULL);

    FUNC5(p_libvlc);

    if (b_test_all)
    {
        FUNC6("testing Qt dialog callbacks\n");
        static const char *args[] = {
            "--no-qt-privacy-ask", /* avoid dialog that ask for privacy */
        };
        p_libvlc = FUNC4(1, args);
        FUNC2(p_libvlc != NULL);

        int i_ret = FUNC3(p_libvlc->p_libvlc_int, "qt");
        FUNC2(i_ret == VLC_SUCCESS);
        FUNC9(FUNC0(p_libvlc->p_libvlc_int), NULL, 3000000);

        FUNC5(p_libvlc);
    }

    return 0;
}
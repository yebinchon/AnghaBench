
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pf_update_progress; int pf_cancel; int pf_display_progress; int pf_display_question; int pf_display_login; int pf_display_error; } ;
typedef TYPE_1__ vlc_dialog_cbs ;
struct cb_answer {int member_0; } ;
struct TYPE_7__ {int p_libvlc_int; } ;
typedef TYPE_2__ libvlc_instance_t ;


 int VLC_OBJECT (int ) ;
 int VLC_SUCCESS ;
 int alarm (int) ;
 int assert (int) ;
 int cancel_cb ;
 int display_error_cb ;
 int display_login_cb ;
 int display_progress_cb ;
 int display_question_cb ;
 int libvlc_InternalAddIntf (int ,char*) ;
 TYPE_2__* libvlc_new (int,char const**) ;
 int libvlc_release (TYPE_2__*) ;
 int printf (char*) ;
 int setenv (char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int test_dialogs (int ,struct cb_answer*,int) ;
 int update_progress_cb ;
 int vlc_dialog_provider_set_callbacks (int ,TYPE_1__ const*,struct cb_answer*) ;

int
main(int i_argc, char *ppsz_argv[])
{
    bool b_test_all = i_argc > 1 && strcmp(ppsz_argv[1], "-a") == 0;

    if (!b_test_all)
        alarm(10);

    setenv("VLC_PLUGIN_PATH", "../modules", 1);
    setenv("VLC_LIB_PATH", "../modules", 1);

    libvlc_instance_t *p_libvlc = libvlc_new(0, ((void*)0));
    assert(p_libvlc != ((void*)0));

    printf("testing dialog callbacks\n");
    const vlc_dialog_cbs cbs = {
        .pf_display_error = display_error_cb,
        .pf_display_login = display_login_cb,
        .pf_display_question = display_question_cb,
        .pf_display_progress = display_progress_cb,
        .pf_cancel = cancel_cb,
        .pf_update_progress = update_progress_cb,
    };
    struct cb_answer ans = { 0 };
    vlc_dialog_provider_set_callbacks(p_libvlc->p_libvlc_int, &cbs, &ans);
    test_dialogs(VLC_OBJECT(p_libvlc->p_libvlc_int), &ans, 100000);
    vlc_dialog_provider_set_callbacks(p_libvlc->p_libvlc_int, ((void*)0), ((void*)0));

    libvlc_release(p_libvlc);

    if (b_test_all)
    {
        printf("testing Qt dialog callbacks\n");
        static const char *args[] = {
            "--no-qt-privacy-ask",
        };
        p_libvlc = libvlc_new(1, args);
        assert(p_libvlc != ((void*)0));

        int i_ret = libvlc_InternalAddIntf(p_libvlc->p_libvlc_int, "qt");
        assert(i_ret == VLC_SUCCESS);
        test_dialogs(VLC_OBJECT(p_libvlc->p_libvlc_int), ((void*)0), 3000000);

        libvlc_release(p_libvlc);
    }

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_dialog_question_type ;
typedef int vlc_dialog_provider ;
typedef int vlc_dialog_id ;
typedef int va_list ;
struct TYPE_3__ {int i_action; } ;
struct TYPE_4__ {TYPE_1__ question; } ;
struct dialog_answer {TYPE_2__ u; } ;


 int VLC_DIALOG_QUESTION ;
 int VLC_EGENERIC ;
 int assert (int) ;
 int dialog_display_question_va (int *,int **,int ,char const*,char const*,char const*,char const*,char const*,int ) ;
 int dialog_wait (int *,int *,int ,struct dialog_answer*) ;
 int * get_dialog_provider (int *,int) ;

int
vlc_dialog_wait_question_va(vlc_object_t *p_obj,
                            vlc_dialog_question_type i_type,
                            const char *psz_cancel, const char *psz_action1,
                            const char *psz_action2, const char *psz_title,
                            const char *psz_fmt, va_list ap)
{
    assert(p_obj != ((void*)0) && psz_fmt != ((void*)0) && psz_title != ((void*)0)
        && psz_cancel != ((void*)0));

    vlc_dialog_provider *p_provider = get_dialog_provider(p_obj, 1);
    if (p_provider == ((void*)0))
        return VLC_EGENERIC;

    vlc_dialog_id *p_id;
    int i_ret = dialog_display_question_va(p_provider, &p_id, i_type,
                                           psz_cancel, psz_action1,
                                           psz_action2, psz_title, psz_fmt, ap);
    if (i_ret < 0 || p_id == ((void*)0))
        return i_ret;

    struct dialog_answer answer;
    i_ret = dialog_wait(p_provider, p_id, VLC_DIALOG_QUESTION, &answer);
    if (i_ret <= 0)
        return i_ret;

    if (answer.u.question.i_action != 1 && answer.u.question.i_action != 2)
        return VLC_EGENERIC;

    return answer.u.question.i_action;
}

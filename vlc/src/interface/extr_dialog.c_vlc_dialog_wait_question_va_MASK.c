#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_dialog_question_type ;
typedef  int /*<<< orphan*/  vlc_dialog_provider ;
typedef  int /*<<< orphan*/  vlc_dialog_id ;
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_3__ {int i_action; } ;
struct TYPE_4__ {TYPE_1__ question; } ;
struct dialog_answer {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_DIALOG_QUESTION ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dialog_answer*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 

int
FUNC4(vlc_object_t *p_obj,
                            vlc_dialog_question_type i_type,
                            const char *psz_cancel, const char *psz_action1,
                            const char *psz_action2, const char *psz_title,
                            const char *psz_fmt, va_list ap)
{
    FUNC0(p_obj != NULL && psz_fmt != NULL && psz_title != NULL
        && psz_cancel != NULL);

    vlc_dialog_provider *p_provider = FUNC3(p_obj, true);
    if (p_provider == NULL)
        return VLC_EGENERIC;

    vlc_dialog_id *p_id;
    int i_ret = FUNC1(p_provider, &p_id, i_type,
                                           psz_cancel, psz_action1,
                                           psz_action2, psz_title, psz_fmt, ap);
    if (i_ret < 0 || p_id == NULL)
        return i_ret;

    struct dialog_answer answer;
    i_ret = FUNC2(p_provider, p_id, VLC_DIALOG_QUESTION, &answer);
    if (i_ret <= 0)
        return i_ret;

    if (answer.u.question.i_action != 1 && answer.u.question.i_action != 2)
        return VLC_EGENERIC;

    return answer.u.question.i_action;
}
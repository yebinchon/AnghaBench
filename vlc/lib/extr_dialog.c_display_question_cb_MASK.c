#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_dialog_question_type ;
typedef  int /*<<< orphan*/  vlc_dialog_id ;
struct TYPE_4__ {int /*<<< orphan*/  (* pf_display_question ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/  const,char const*,char const*,char const*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  data; TYPE_1__ cbs; } ;
struct TYPE_6__ {TYPE_2__ dialog; } ;
typedef  TYPE_3__ libvlc_instance_t ;
typedef  int /*<<< orphan*/  libvlc_dialog_question_type ;
typedef  int /*<<< orphan*/  libvlc_dialog_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/  const,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *p_data, vlc_dialog_id *p_id, const char *psz_title,
                    const char *psz_text, vlc_dialog_question_type i_type,
                    const char *psz_cancel, const char *psz_action1,
                    const char *psz_action2)
{
    libvlc_instance_t *p_instance = p_data;
    const libvlc_dialog_question_type i_ltype =
        FUNC1(i_type);

    p_instance->dialog.cbs.pf_display_question(p_instance->dialog.data,
                                               (libvlc_dialog_id *) p_id,
                                               psz_title, psz_text, i_ltype,
                                               psz_cancel,
                                               psz_action1, psz_action2);
}
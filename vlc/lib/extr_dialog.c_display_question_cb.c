
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_dialog_question_type ;
typedef int vlc_dialog_id ;
struct TYPE_4__ {int (* pf_display_question ) (int ,int *,char const*,char const*,int const,char const*,char const*,char const*) ;} ;
struct TYPE_5__ {int data; TYPE_1__ cbs; } ;
struct TYPE_6__ {TYPE_2__ dialog; } ;
typedef TYPE_3__ libvlc_instance_t ;
typedef int libvlc_dialog_question_type ;
typedef int libvlc_dialog_id ;


 int stub1 (int ,int *,char const*,char const*,int const,char const*,char const*,char const*) ;
 int vlc_to_libvlc_dialog_question_type (int ) ;

__attribute__((used)) static void
display_question_cb(void *p_data, vlc_dialog_id *p_id, const char *psz_title,
                    const char *psz_text, vlc_dialog_question_type i_type,
                    const char *psz_cancel, const char *psz_action1,
                    const char *psz_action2)
{
    libvlc_instance_t *p_instance = p_data;
    const libvlc_dialog_question_type i_ltype =
        vlc_to_libvlc_dialog_question_type(i_type);

    p_instance->dialog.cbs.pf_display_question(p_instance->dialog.data,
                                               (libvlc_dialog_id *) p_id,
                                               psz_title, psz_text, i_ltype,
                                               psz_cancel,
                                               psz_action1, psz_action2);
}

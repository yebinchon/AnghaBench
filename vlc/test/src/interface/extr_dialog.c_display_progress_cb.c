
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_dialog_id ;
struct cb_answer {scalar_t__ b_dismiss; } ;


 int printf (char*,char const*,char const*,int,float,char const*) ;
 int vlc_dialog_id_dismiss (int *) ;

__attribute__((used)) static void
display_progress_cb(void *p_data, vlc_dialog_id *p_id, const char *psz_title,
                    const char *psz_text, bool b_indeterminate,
                    float f_position, const char *psz_cancel)
{
    struct cb_answer *p_ans = p_data;
    printf("progress dialog: title: '%s', text: '%s', "
           "indeterminate: %d, position: %f, cancel: '%s'\n",
           psz_title, psz_text, b_indeterminate, f_position, psz_cancel);

    if (p_ans->b_dismiss)
        vlc_dialog_id_dismiss(p_id);
}

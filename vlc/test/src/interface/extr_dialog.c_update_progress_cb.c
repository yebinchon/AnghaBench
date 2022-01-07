
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_dialog_id ;


 int printf (char*,float,char const*) ;

__attribute__((used)) static void update_progress_cb(void *p_data, vlc_dialog_id *p_id, float f_position,
                               const char *psz_text)
{
    (void) p_id;
    (void) p_data;
    printf("update_progress: %f, text: %s\n", f_position, psz_text);
}

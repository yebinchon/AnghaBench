
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_dialog_id ;


 int vlc_dialog_id_dismiss (int *) ;

__attribute__((used)) static void
cancel_cb(void *p_data, vlc_dialog_id *p_id)
{
    (void) p_data;
    vlc_dialog_id_dismiss(p_id);
}

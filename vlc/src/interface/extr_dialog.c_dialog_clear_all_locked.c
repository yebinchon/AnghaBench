
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dialog_array; } ;
typedef TYPE_1__ vlc_dialog_provider ;
typedef int vlc_dialog_id ;


 int dialog_cancel_locked (TYPE_1__*,int *) ;
 size_t vlc_array_count (int *) ;
 int * vlc_array_item_at_index (int *,size_t) ;

__attribute__((used)) static void
dialog_clear_all_locked(vlc_dialog_provider *p_provider)
{
    for (size_t i = 0; i < vlc_array_count(&p_provider->dialog_array); ++i)
    {
        vlc_dialog_id *p_id =
            vlc_array_item_at_index(&p_provider->dialog_array, i);
        dialog_cancel_locked(p_provider, p_id);
    }
}

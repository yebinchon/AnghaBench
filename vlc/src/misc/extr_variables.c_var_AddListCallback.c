
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_list_callback_t ;
struct TYPE_4__ {void* p_data; int pf_list_callback; } ;
typedef TYPE_1__ callback_entry_t ;


 int AddCallback (int *,char const*,TYPE_1__*,int ) ;
 int vlc_list_callback ;
 TYPE_1__* xmalloc (int) ;

void (var_AddListCallback)(vlc_object_t *p_this, const char *psz_name,
                           vlc_list_callback_t pf_callback, void *p_data)
{
    callback_entry_t *entry = xmalloc(sizeof (*entry));

    entry->pf_list_callback = pf_callback;
    entry->p_data = p_data;
    AddCallback(p_this, psz_name, entry, vlc_list_callback);
}

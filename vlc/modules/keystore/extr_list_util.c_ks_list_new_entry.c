
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ppsz_values; int * p_secret; } ;
typedef TYPE_1__ vlc_keystore_entry ;
struct ks_list {int i_count; int i_max; TYPE_1__* p_entries; } ;


 int VLC_KEYSTORE_VALUES_INIT (int ) ;
 int ks_list_free (struct ks_list*) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;

vlc_keystore_entry *
ks_list_new_entry(struct ks_list *p_list)
{
    if (p_list->i_count + 1 > p_list->i_max)
    {
        p_list->i_max += 10;
        vlc_keystore_entry *p_entries = realloc(p_list->p_entries, p_list->i_max
                                                * sizeof(*p_list->p_entries));
        if (!p_entries)
        {
            ks_list_free(p_list);
            return ((void*)0);
        }
        p_list->p_entries = p_entries;
    }
    vlc_keystore_entry *p_entry = &p_list->p_entries[p_list->i_count];
    p_entry->p_secret = ((void*)0);
    VLC_KEYSTORE_VALUES_INIT(p_entry->ppsz_values);
    p_list->i_count++;

    return p_entry;
}

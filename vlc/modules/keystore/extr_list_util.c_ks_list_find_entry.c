
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** ppsz_values; int p_secret; } ;
typedef TYPE_1__ vlc_keystore_entry ;
struct ks_list {unsigned int i_count; TYPE_1__* p_entries; } ;


 unsigned int KEY_MAX ;
 scalar_t__ strcmp (char const*,char const*) ;

vlc_keystore_entry *
ks_list_find_entry(struct ks_list *p_list, const char *const ppsz_values[KEY_MAX],
                   unsigned *p_start_index)
{
    for (unsigned int i = p_start_index ? *p_start_index : 0;
         i < p_list->i_count; ++i)
    {
        vlc_keystore_entry *p_entry = &p_list->p_entries[i];
        if (!p_entry->p_secret)
            continue;

        bool b_match = 1;
        for (unsigned int j = 0; j < KEY_MAX; ++j)
        {
            const char *psz_value1 = ppsz_values[j];
            const char *psz_value2 = p_entry->ppsz_values[j];

            if (!psz_value1)
                continue;
            if (!psz_value2 || strcmp(psz_value1, psz_value2))
                b_match = 0;
        }
        if (b_match)
        {
            if (p_start_index)
                *p_start_index = i + 1;
            return p_entry;
        }
    }
    return ((void*)0);
}

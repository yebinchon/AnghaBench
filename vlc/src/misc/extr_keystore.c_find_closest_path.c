
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** ppsz_values; } ;
typedef TYPE_1__ vlc_keystore_entry ;


 size_t KEY_PATH ;
 int free (char*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char*,char const*,size_t) ;
 char* vlc_uri_decode_duplicate (char const*) ;

__attribute__((used)) static vlc_keystore_entry *
find_closest_path(vlc_keystore_entry *p_entries, unsigned i_count,
                  const char *psz_path)
{
    vlc_keystore_entry *p_match_entry = ((void*)0);
    size_t i_last_pathlen = 0;
    char *psz_decoded_path = vlc_uri_decode_duplicate(psz_path);
    if (psz_decoded_path == ((void*)0))
        return ((void*)0);


    for (unsigned int i = 0; i < i_count; ++i)
    {
        vlc_keystore_entry *p_entry = &p_entries[i];
        const char *psz_entry_path = p_entry->ppsz_values[KEY_PATH];
        if (psz_entry_path == ((void*)0))
        {
            if (p_match_entry == ((void*)0))
                p_match_entry = p_entry;
            continue;
        }
        size_t i_entry_pathlen = strlen(psz_entry_path);

        if (strncasecmp(psz_decoded_path, psz_entry_path, i_entry_pathlen) == 0
         && i_entry_pathlen > i_last_pathlen)
        {
            i_last_pathlen = i_entry_pathlen;
            p_match_entry = p_entry;
        }
    }
    free(psz_decoded_path);
    return p_match_entry;
}

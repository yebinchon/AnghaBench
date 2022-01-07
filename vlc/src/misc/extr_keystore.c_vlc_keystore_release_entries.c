
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_keystore_entry ;


 int free (int *) ;
 int vlc_keystore_release_entry (int *) ;

void
vlc_keystore_release_entries(vlc_keystore_entry *p_entries, unsigned int i_count)
{
    for (unsigned int i = 0; i < i_count; ++i)
        vlc_keystore_release_entry(&p_entries[i]);
    free(p_entries);
}

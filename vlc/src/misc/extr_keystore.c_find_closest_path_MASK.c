#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char** ppsz_values; } ;
typedef  TYPE_1__ vlc_keystore_entry ;

/* Variables and functions */
 size_t KEY_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*,size_t) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static vlc_keystore_entry *
FUNC4(vlc_keystore_entry *p_entries, unsigned i_count,
                  const char *psz_path)
{
    vlc_keystore_entry *p_match_entry = NULL;
    size_t i_last_pathlen = 0;
    char *psz_decoded_path = FUNC3(psz_path);
    if (psz_decoded_path == NULL)
        return NULL;

    /* Try to find the entry that has the closest path to psz_url */
    for (unsigned int i = 0; i < i_count; ++i)
    {
        vlc_keystore_entry *p_entry = &p_entries[i];
        const char *psz_entry_path = p_entry->ppsz_values[KEY_PATH];
        if (psz_entry_path == NULL)
        {
            if (p_match_entry == NULL)
                p_match_entry = p_entry;
            continue;
        }
        size_t i_entry_pathlen = FUNC1(psz_entry_path);

        if (FUNC2(psz_decoded_path, psz_entry_path, i_entry_pathlen) == 0
         && i_entry_pathlen > i_last_pathlen)
        {
            i_last_pathlen = i_entry_pathlen;
            p_match_entry = p_entry;
        }
    }
    FUNC0(psz_decoded_path);
    return p_match_entry;
}
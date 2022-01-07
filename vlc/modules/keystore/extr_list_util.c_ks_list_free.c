
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_list {scalar_t__ i_max; scalar_t__ i_count; int * p_entries; } ;


 int vlc_keystore_release_entries (int *,scalar_t__) ;

void
ks_list_free(struct ks_list *p_list)
{
    vlc_keystore_release_entries(p_list->p_entries, p_list->i_count);
    p_list->p_entries = ((void*)0);
    p_list->i_count = 0;
    p_list->i_max = 0;
}

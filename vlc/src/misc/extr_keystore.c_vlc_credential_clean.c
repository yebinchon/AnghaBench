
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_entries_count; int psz_dialog_password; int psz_dialog_username; int psz_var_password; int psz_var_username; int psz_split_domain; scalar_t__ p_keystore; int p_entries; } ;
typedef TYPE_1__ vlc_credential ;


 int free (int ) ;
 int vlc_keystore_release (scalar_t__) ;
 int vlc_keystore_release_entries (int ,scalar_t__) ;

void
vlc_credential_clean(vlc_credential *p_credential)
{
    if (p_credential->i_entries_count > 0)
        vlc_keystore_release_entries(p_credential->p_entries,
                                     p_credential->i_entries_count);
    if (p_credential->p_keystore)
        vlc_keystore_release(p_credential->p_keystore);

    free(p_credential->psz_split_domain);
    free(p_credential->psz_var_username);
    free(p_credential->psz_var_password);
    free(p_credential->psz_dialog_username);
    free(p_credential->psz_dialog_password);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int psz_file; } ;
typedef TYPE_1__ vlc_keystore_sys ;
struct TYPE_6__ {int i_secret_len; int p_secret; scalar_t__ ppsz_values; } ;
typedef TYPE_2__ vlc_keystore_entry ;
struct TYPE_7__ {TYPE_1__* p_sys; } ;
typedef TYPE_3__ vlc_keystore ;
struct ks_list {unsigned int i_count; TYPE_2__* p_entries; } ;
typedef int FILE ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ fprintf (int *,char*,...) ;
 int free (char*) ;
 int rewind (int *) ;
 scalar_t__ truncate0 (int) ;
 scalar_t__ values_write (int *,char const* const*) ;
 char* vlc_b64_encode_binary (int ,int ) ;
 int vlc_unlink (int ) ;

__attribute__((used)) static int
file_save(vlc_keystore *p_keystore, FILE *p_file, int i_fd, struct ks_list *p_list)
{
    vlc_keystore_sys *p_sys = p_keystore->p_sys;
    int i_ret = VLC_EGENERIC;

    rewind(p_file);
    if (truncate0(i_fd))
    {
        vlc_unlink(p_sys->psz_file);
        return i_ret;
    }

    for (unsigned int i = 0; i < p_list->i_count; ++i)
    {
        vlc_keystore_entry *p_entry = &p_list->p_entries[i];
        if (!p_entry->p_secret)
            continue;

        if (fprintf(p_file, "{") < 0)
            goto end;
        if (values_write(p_file, (const char *const *) p_entry->ppsz_values))
            goto end;
        char *psz_b64 = vlc_b64_encode_binary(p_entry->p_secret,
                                              p_entry->i_secret_len);
        if (!psz_b64)
            goto end;
        if (fprintf(p_file, "}:%s\n", psz_b64) < 0)
        {
            free(psz_b64);
            goto end;
        }
        free(psz_b64);
    }
    i_ret = VLC_SUCCESS;
end:

    if (i_ret != VLC_SUCCESS)
    {
        if (truncate0(i_fd))
            vlc_unlink(p_sys->psz_file);
    }
    return i_ret;
}

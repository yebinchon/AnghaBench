
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int psz_file; } ;
typedef TYPE_1__ vlc_keystore_sys ;
struct TYPE_7__ {char** ppsz_values; int p_secret; int i_secret_len; } ;
typedef TYPE_2__ vlc_keystore_entry ;
struct TYPE_8__ {TYPE_1__* p_sys; } ;
typedef TYPE_3__ vlc_keystore ;
struct ks_list {int dummy; } ;
typedef int ssize_t ;
typedef int FILE ;


 int KEY_MAX ;
 int VLC_SUCCESS ;
 int free (char*) ;
 int getchar () ;
 int getline (char**,size_t*,int *) ;
 TYPE_2__* ks_list_new_entry (struct ks_list*) ;
 int str2key (char*) ;
 size_t strcspn (char*,char*) ;
 scalar_t__ truncate0 (int) ;
 char* vlc_b64_decode (char*) ;
 int vlc_b64_decode_binary (int *,char*) ;
 int vlc_unlink (int ) ;

__attribute__((used)) static int
file_read(vlc_keystore *p_keystore, FILE *p_file, int i_fd, struct ks_list *p_list)
{
    vlc_keystore_sys *p_sys = p_keystore->p_sys;
    char *psz_line = ((void*)0);
    size_t i_line_len = 0;
    ssize_t i_read;
    bool b_valid = 0;

    while ((i_read = getline(&psz_line, &i_line_len, p_file)) != -1)
    {
        char *p = psz_line;
        if (*(p++) != '{')
        {
            getchar();
            goto end;
        }

        vlc_keystore_entry *p_entry = ks_list_new_entry(p_list);
        if (!p_entry)
            goto end;

        bool b_end = 0;
        while (*p != '\0' && !b_end)
        {
            int i_key;
            char *p_key, *p_value;
            size_t i_len;


            i_len = strcspn(p, ":");
            if (!i_len || p[i_len] == '\0')
                goto end;

            p[i_len] = '\0';
            p_key = p;
            i_key = str2key(p_key);
            if (i_key == -1 || i_key >= KEY_MAX)
                goto end;
            p += i_len + 1;


            i_len = strcspn(p, ",}");
            if (!i_len || p[i_len] == '\0')
                goto end;

            if (p[i_len] == '}')
                b_end = 1;

            p[i_len] = '\0';
            p_value = vlc_b64_decode(p);
            if (!p_value)
                goto end;
            p += i_len + 1;

            p_entry->ppsz_values[i_key] = p_value;
        }

        if (*p == '\0' || *p != ':')
            goto end;

        p_entry->i_secret_len = vlc_b64_decode_binary(&p_entry->p_secret, p + 1);
        if (!p_entry->p_secret)
            goto end;
    }

    b_valid = 1;

end:
    free(psz_line);
    if (!b_valid)
    {
        if (truncate0(i_fd))
            vlc_unlink(p_sys->psz_file);
    }
    return VLC_SUCCESS;
}

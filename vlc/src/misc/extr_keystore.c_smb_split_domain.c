
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_username; int psz_split_domain; int psz_realm; } ;
typedef TYPE_1__ vlc_credential ;


 int free (int ) ;
 char* strchr (char*,char) ;
 int strndup (char*,size_t) ;

__attribute__((used)) static void
smb_split_domain(vlc_credential *p_credential)
{
    char *psz_delim = strchr(p_credential->psz_username, ';');
    if (psz_delim)
    {
        size_t i_len = psz_delim - p_credential->psz_username;
        if (i_len > 0)
        {
            free(p_credential->psz_split_domain);
            p_credential->psz_split_domain =
                strndup(p_credential->psz_username, i_len);
            p_credential->psz_realm = p_credential->psz_split_domain;
        }
        p_credential->psz_username = psz_delim + 1;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_username; int * psz_password; } ;
typedef TYPE_1__ vlc_credential ;



__attribute__((used)) static bool
is_credential_valid(vlc_credential *p_credential)
{
    if (p_credential->psz_username && *p_credential->psz_username != '\0'
     && p_credential->psz_password)
        return 1;
    p_credential->psz_password = ((void*)0);
    return 0;
}

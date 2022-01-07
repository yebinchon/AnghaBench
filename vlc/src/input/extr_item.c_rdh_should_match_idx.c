
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlc_readdir_helper {size_t i_slaves; struct rdh_slave** pp_slaves; } ;
struct rdh_slave {int psz_filename; TYPE_1__* p_slave; } ;
struct TYPE_2__ {scalar_t__ i_priority; } ;


 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ strncasecmp (int ,int ,scalar_t__) ;
 char* strrchr (int ,char) ;

__attribute__((used)) static int rdh_should_match_idx(struct vlc_readdir_helper *p_rdh,
                                struct rdh_slave *p_rdh_sub)
{
    char *psz_ext = strrchr(p_rdh_sub->psz_filename, '.');
    if (!psz_ext)
        return 0;
    psz_ext++;

    if (strcasecmp(psz_ext, "sub") != 0)
        return 0;

    for (size_t i = 0; i < p_rdh->i_slaves; i++)
    {
        struct rdh_slave *p_rdh_slave = p_rdh->pp_slaves[i];

        if (p_rdh_slave == ((void*)0) || p_rdh_slave == p_rdh_sub)
            continue;


        if (p_rdh_slave->p_slave->i_priority !=
            p_rdh_sub->p_slave->i_priority)
            continue;


        if (strncasecmp(p_rdh_sub->psz_filename, p_rdh_slave->psz_filename,
                        strlen(p_rdh_sub->psz_filename) - 3 ) != 0)
            continue;


        char *psz_ext_idx = strrchr(p_rdh_slave->psz_filename, '.');
        if (psz_ext_idx == ((void*)0))
            continue;
        psz_ext_idx++;
        if (strcasecmp(psz_ext_idx, "idx" ) == 0)
            return 1;
    }
    return 0;
}

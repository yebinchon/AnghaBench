
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_probe_t ;
struct vlc_rd_probe {int * psz_longname; int * psz_name; int member_1; int member_0; } ;
typedef int names ;


 int VLC_ENOMEM ;
 int VLC_PROBE_CONTINUE ;
 int free (int *) ;
 int strdup (char const*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_probe_add (int *,struct vlc_rd_probe*,int) ;

int
vlc_rd_probe_add(vlc_probe_t *probe, const char *psz_name,
                 const char *psz_longname)
{
    struct vlc_rd_probe names = { strdup(psz_name), strdup(psz_longname) };

    if (unlikely(names.psz_name == ((void*)0) || names.psz_longname == ((void*)0)
                 || vlc_probe_add(probe, &names, sizeof(names))))
    {
        free(names.psz_name);
        free(names.psz_longname);
        return VLC_ENOMEM;
    }
    return VLC_PROBE_CONTINUE;
}

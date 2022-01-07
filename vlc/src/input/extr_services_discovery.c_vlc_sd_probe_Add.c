
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_2; int * longname; int * name; int member_1; int member_0; } ;
typedef TYPE_1__ vlc_sd_probe_t ;
typedef int vlc_probe_t ;
typedef int names ;


 int VLC_ENOMEM ;
 int VLC_PROBE_CONTINUE ;
 int free (int *) ;
 int strdup (char const*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_probe_add (int *,TYPE_1__*,int) ;

int vlc_sd_probe_Add (vlc_probe_t *probe, const char *name,
                      const char *longname, int category)
{
    vlc_sd_probe_t names = { strdup(name), strdup(longname), category };

    if (unlikely (names.name == ((void*)0) || names.longname == ((void*)0)
               || vlc_probe_add (probe, &names, sizeof (names))))
    {
        free (names.name);
        free (names.longname);
        return VLC_ENOMEM;
    }
    return VLC_PROBE_CONTINUE;
}

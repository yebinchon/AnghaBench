
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VAStatus ;
typedef scalar_t__ VAProfile ;
typedef int VADisplay ;


 scalar_t__ VAProfileNone ;
 scalar_t__ VA_STATUS_SUCCESS ;
 scalar_t__* calloc (int,int) ;
 int free (scalar_t__*) ;
 int vaMaxNumProfiles (int ) ;
 scalar_t__ vaQueryConfigProfiles (int ,scalar_t__*,int*) ;

__attribute__((used)) static bool
IsVaProfileSupported(VADisplay dpy, VAProfile i_profile)
{

    if (i_profile == VAProfileNone)
        return 1;
    int i_profiles_nb = vaMaxNumProfiles(dpy);
    if (i_profiles_nb < 0)
        return 0;
    VAProfile *p_profiles_list = calloc(i_profiles_nb, sizeof(VAProfile));
    if (!p_profiles_list)
        return 0;

    bool b_supported_profile = 0;
    VAStatus status =
        vaQueryConfigProfiles(dpy, p_profiles_list, &i_profiles_nb);
    if (status != VA_STATUS_SUCCESS)
        goto error;

    for (int i = 0; i < i_profiles_nb; i++)
    {
        if (p_profiles_list[i] == i_profile)
        {
            b_supported_profile = 1;
            break;
        }
    }

error:
    free(p_profiles_list);
    return b_supported_profile;
}

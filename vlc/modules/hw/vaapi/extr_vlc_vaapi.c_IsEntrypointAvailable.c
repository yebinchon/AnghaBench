
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VAStatus ;
typedef int VAProfile ;
typedef scalar_t__ VAEntrypoint ;
typedef int VADisplay ;


 scalar_t__ VA_STATUS_SUCCESS ;
 int free (scalar_t__*) ;
 int vaMaxNumEntrypoints (int ) ;
 scalar_t__ vaQueryConfigEntrypoints (int ,int ,scalar_t__*,int*) ;
 scalar_t__* vlc_alloc (int,int) ;

__attribute__((used)) static bool
IsEntrypointAvailable(VADisplay dpy, VAProfile i_profile,
                      VAEntrypoint entrypoint)
{
    VAEntrypoint * entrypoints;
    int num_entrypoints = vaMaxNumEntrypoints(dpy);
    bool ret = 0;

    if (num_entrypoints <= 0)
        return 0;
    entrypoints = vlc_alloc(num_entrypoints, sizeof(VAEntrypoint));

    if (!entrypoints)
        return 0;

    VAStatus status =
        vaQueryConfigEntrypoints(dpy, i_profile, entrypoints, &num_entrypoints);
    if (status != VA_STATUS_SUCCESS)
        goto error;

    for (int i = 0; i < num_entrypoints; ++i)
        if (entrypoint == entrypoints[i])
        {
            ret = 1;
            break;
        }

error:
    free(entrypoints);
    return ret;
}

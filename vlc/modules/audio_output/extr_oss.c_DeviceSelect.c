
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_7__ {char* device; } ;
typedef TYPE_2__ aout_sys_t ;


 int AOUT_RESTART_OUTPUT ;
 int aout_DeviceReport (TYPE_1__*,char*) ;
 int aout_RestartRequest (TYPE_1__*,int ) ;
 int free (char*) ;
 char* strdup (char const*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int DeviceSelect (audio_output_t *aout, const char *id)
{
    aout_sys_t *sys = aout->sys;
    char *path = ((void*)0);

    if (id != ((void*)0))
    {
        path = strdup (id);
        if (unlikely(path == ((void*)0)))
            return -1;
    }

    free (sys->device);
    sys->device = path;
    aout_DeviceReport (aout, path);
    aout_RestartRequest (aout, AOUT_RESTART_OUTPUT);
    return 0;
}

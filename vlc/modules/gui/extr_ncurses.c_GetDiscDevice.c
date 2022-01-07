
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* config_GetPsz (char const*) ;
 size_t strcspn (char*,char*) ;
 char* strdup (char const*) ;
 int strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static char *GetDiscDevice(const char *name)
{
    static const struct { const char *s; size_t n; const char *v; } devs[] =
    {
        { "cdda://", 7, "cd-audio", },
        { "dvd://", 6, "dvd", },
        { "vcd://", 6, "vcd", },
    };
    char *device;

    for (unsigned i = 0; i < sizeof devs / sizeof *devs; i++) {
        size_t n = devs[i].n;
        if (!strncmp(name, devs[i].s, n)) {
            if (name[n] == '@' || name[n] == '\0')
                return config_GetPsz(devs[i].v);

            return strdup(name + n);
        }
    }

    device = strdup(name);

    if (device)
        device[strcspn(device, "@")] = '\0';

    return device;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_userdir_t ;
 int assert (int) ;
 char* config_GetGenericDir (char const*) ;
 char* config_GetHomeDir (char*,char*) ;
 char** ppsz_generic_names ;

char *config_GetUserDir (vlc_userdir_t type)
{
    switch (type)
    {
        case 129:
            return config_GetHomeDir(".share",
                "/sdcard/Android/data/org.videolan.vlc");
        case 139:
            return config_GetHomeDir(".cache",
                "/sdcard/Android/data/org.videolan.vlc/cache");
        case 134:
            return config_GetHomeDir(((void*)0), ((void*)0));
        case 138:
            return config_GetHomeDir(".config", ((void*)0));

        case 137:
        case 135:
        case 130:
        case 131:
        case 136:
        case 133:
        case 132:
        case 128:
        {
            assert(type >= 137 && type <= 128);
            const char *psz_name = ppsz_generic_names[type - 137];
            if (psz_name != ((void*)0))
                return config_GetGenericDir(psz_name);
        }
    }
    return ((void*)0);
}

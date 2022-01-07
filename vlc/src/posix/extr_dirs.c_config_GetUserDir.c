
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_userdir_t ;
 char* config_GetAppDir (char*,char*) ;
 char* config_GetHomeDir () ;
 char* config_GetTypeDir (char*) ;

char *config_GetUserDir (vlc_userdir_t type)
{
    switch (type)
    {
        case 134:
            break;
        case 138:
            return config_GetAppDir ("CONFIG", ".config");
        case 129:
            return config_GetAppDir ("DATA", ".local/share");
        case 139:
            return config_GetAppDir ("CACHE", ".cache");

        case 137:
            return config_GetTypeDir ("DESKTOP");
        case 135:
            return config_GetTypeDir ("DOWNLOAD");
        case 130:
            return config_GetTypeDir ("TEMPLATES");
        case 131:
            return config_GetTypeDir ("PUBLICSHARE");
        case 136:
            return config_GetTypeDir ("DOCUMENTS");
        case 133:
            return config_GetTypeDir ("MUSIC");
        case 132:
            return config_GetTypeDir ("PICTURES");
        case 128:
            return config_GetTypeDir ("VIDEOS");
    }
    return config_GetHomeDir ();
}

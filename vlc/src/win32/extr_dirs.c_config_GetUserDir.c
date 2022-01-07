
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_userdir_t ;


 int CSIDL_LOCAL_APPDATA ;
 int CSIDL_MYMUSIC ;
 int CSIDL_MYPICTURES ;
 int CSIDL_MYVIDEO ;
 int CSIDL_PERSONAL ;
 char* config_GetAppDir () ;
 char* config_GetShellDir (int ) ;
 int vlc_assert_unreachable () ;

char *config_GetUserDir (vlc_userdir_t type)
{
    switch (type)
    {
        case 134:
            return config_GetShellDir (CSIDL_PERSONAL);
        case 138:
        case 129:
            return config_GetAppDir ();
        case 139:

            return config_GetAppDir ();




        case 137:
        case 135:
        case 130:
        case 131:
        case 136:
            return config_GetUserDir(134);
        case 133:
            return config_GetShellDir (CSIDL_MYMUSIC);
        case 132:
            return config_GetShellDir (CSIDL_MYPICTURES);
        case 128:
            return config_GetShellDir (CSIDL_MYVIDEO);
    }
    vlc_assert_unreachable ();
}

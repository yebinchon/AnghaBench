
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VLC_EGENERIC ;
 int VLC_PKG_DATA_DIR ;
 int VLC_PKG_LIBEXEC_DIR ;
 int VLC_SUCCESS ;
 int VLC_USERDATA_DIR ;
 char* config_GetSysPath (int ,int *) ;
 char* config_GetUserDir (int ) ;
 int free (char*) ;
 char** malloc (int) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ unlikely (int ) ;
 char** vlclua_dir_list_append (char**,char*,char const*) ;

int vlclua_dir_list(const char *luadirname, char ***restrict listp)
{
    char **list = malloc(4 * sizeof(char *));
    if (unlikely(list == ((void*)0)))
        return VLC_EGENERIC;

    *listp = list;


    list = vlclua_dir_list_append(list, config_GetUserDir(VLC_USERDATA_DIR),
                                  luadirname);

    char *libdir = config_GetSysPath(VLC_PKG_LIBEXEC_DIR, ((void*)0));
    char *datadir = config_GetSysPath(VLC_PKG_DATA_DIR, ((void*)0));
    bool both = libdir != ((void*)0) && datadir != ((void*)0) && strcmp(libdir, datadir);


    list = vlclua_dir_list_append(list, libdir, luadirname);


    if (both || libdir == ((void*)0))
        list = vlclua_dir_list_append(list, datadir, luadirname);
    else
        free(datadir);

    *list = ((void*)0);
    return VLC_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_FILES_BASENAME ;
 int CONF_FILES_DIRECTORY ;
 int CONF_FILES_FILTER_MASKED ;
 int assert (char***) ;
 int conf_files_list_nulstr (char***,int *,int *,int,int ) ;
 int profile_dirs ;

int portable_get_profiles(char ***ret) {
        assert(ret);

        return conf_files_list_nulstr(ret, ((void*)0), ((void*)0), CONF_FILES_DIRECTORY|CONF_FILES_BASENAME|CONF_FILES_FILTER_MASKED, profile_dirs);
}

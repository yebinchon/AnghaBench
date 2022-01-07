
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CSIDL_FLAG_CREATE ;
 char* FromWide (int *) ;
 int MAX_PATH ;
 int SHGFP_TYPE_CURRENT ;
 scalar_t__ SHGetFolderPathW (int *,int,int *,int ,int *) ;
 scalar_t__ S_OK ;

__attribute__((used)) static char *config_GetShellDir (int csidl)
{
    wchar_t wdir[MAX_PATH];

    if (SHGetFolderPathW (((void*)0), csidl | CSIDL_FLAG_CREATE,
                          ((void*)0), SHGFP_TYPE_CURRENT, wdir ) == S_OK)
        return FromWide (wdir);
    return ((void*)0);
}

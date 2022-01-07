
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CSIDL_FONTS ;
 char* FromWide (int *) ;
 int GetWindowsDirectoryW (int *,int) ;
 int MAX_PATH ;
 int SHGFP_TYPE_CURRENT ;
 scalar_t__ SHGetFolderPathW (int *,int ,int *,int ,int *) ;
 scalar_t__ S_OK ;
 int TEXT (char*) ;
 int wcscat (int *,int ) ;

__attribute__((used)) static char* GetWindowsFontPath()
{
    wchar_t wdir[MAX_PATH];
    if( S_OK != SHGetFolderPathW( ((void*)0), CSIDL_FONTS, ((void*)0), SHGFP_TYPE_CURRENT, wdir ) )
    {
        GetWindowsDirectoryW( wdir, MAX_PATH );
        wcscat( wdir, TEXT("\\fonts") );
    }
    return FromWide( wdir );
}

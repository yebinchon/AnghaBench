
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MSIPACKAGE ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int ERROR_SUCCESS ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributesW (int ) ;
 int INVALID_FILE_ATTRIBUTES ;
 int TRACE (char*,int ) ;
 int debugstr_w (int ) ;
 int strdupW (int ) ;

__attribute__((used)) static UINT ACTION_CheckDirectory(MSIPACKAGE *package, LPCWSTR dir,
 LPWSTR *appValue)
{
    DWORD attr = GetFileAttributesW(dir);

    if (attr != INVALID_FILE_ATTRIBUTES && (attr & FILE_ATTRIBUTE_DIRECTORY))
    {
        TRACE("directory exists, returning %s\n", debugstr_w(dir));
        *appValue = strdupW(dir);
    }

    return ERROR_SUCCESS;
}

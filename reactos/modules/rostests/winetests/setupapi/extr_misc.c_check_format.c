
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef char CHAR ;
typedef int BOOL ;


 scalar_t__ CSTR_EQUAL ;
 scalar_t__ CompareStringA (int ,int ,char*,int,char*,int) ;
 int GetWindowsDirectoryA (char*,int) ;
 int LOCALE_SYSTEM_DEFAULT ;
 int MAX_PATH ;
 int NORM_IGNORECASE ;
 int strcat (char*,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static BOOL check_format(LPSTR path, LPSTR inf)
{
    CHAR check[MAX_PATH];
    BOOL res;

    static const CHAR format[] = "\\INF\\oem";

    GetWindowsDirectoryA(check, MAX_PATH);
    strcat(check, format);
    res = CompareStringA(LOCALE_SYSTEM_DEFAULT, NORM_IGNORECASE, check, -1, path, strlen(check)) == CSTR_EQUAL &&
          path[strlen(check)] != '\\';

    return (!inf) ? res : res && (inf == path + strlen(check) - 3);
}

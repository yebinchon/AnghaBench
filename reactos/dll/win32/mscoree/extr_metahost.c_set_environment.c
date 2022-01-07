
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path_env ;
typedef char WCHAR ;
typedef int LPCWSTR ;


 int GetEnvironmentVariableW (char const*,char*,int) ;
 int MAX_PATH ;
 int SetEnvironmentVariableW (char const*,char*) ;
 int strcpyW (char*,int ) ;
 int strlenW (char*) ;

__attribute__((used)) static void set_environment(LPCWSTR bin_path)
{
    WCHAR path_env[MAX_PATH];
    int len;

    static const WCHAR pathW[] = {'P','A','T','H',0};


    GetEnvironmentVariableW(pathW, path_env, sizeof(path_env)/sizeof(WCHAR));
    len = strlenW(path_env);
    path_env[len++] = ';';
    strcpyW(path_env+len, bin_path);
    SetEnvironmentVariableW(pathW, path_env);
}

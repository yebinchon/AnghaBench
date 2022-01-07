
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int GetTempPathW (int ,char*) ;
 int MAX_PATH ;
 int lstrcatW (char*,char const*) ;
 int lstrcpyW (char*,char*) ;

__attribute__((used)) static void get_temp_filepath(const WCHAR *filename, WCHAR *path, WCHAR *dir)
{
    static const WCHAR scrrunW[] = {'s','c','r','r','u','n','\\',0};

    GetTempPathW(MAX_PATH, path);
    lstrcatW(path, scrrunW);
    lstrcpyW(dir, path);
    lstrcatW(path, filename);
}

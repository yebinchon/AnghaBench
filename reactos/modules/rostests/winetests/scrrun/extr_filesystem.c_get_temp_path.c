
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int DeleteFileW (int *) ;
 int GetTempFileNameW (int *,int const*,int ,int *) ;
 int GetTempPathW (int,int *) ;
 int MAX_PATH ;

__attribute__((used)) static inline void get_temp_path(const WCHAR *prefix, WCHAR *path)
{
    WCHAR buffW[MAX_PATH];

    GetTempPathW(MAX_PATH, buffW);
    GetTempFileNameW(buffW, prefix, 0, path);
    DeleteFileW(path);
}

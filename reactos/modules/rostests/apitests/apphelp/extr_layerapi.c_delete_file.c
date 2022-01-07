
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int BOOL ;


 int DeleteFileA (char*) ;
 int MAX_PATH ;
 int PathCombineA (char*,int ,int ) ;

__attribute__((used)) static BOOL delete_file(LPCSTR dir, LPCSTR name)
{
    char target[MAX_PATH];
    PathCombineA(target, dir, name);
    return DeleteFileA(target);
}

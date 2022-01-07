
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int CHAR ;


 int DeleteFileA (int *) ;
 int GetTempPathA (int,int *) ;
 int MAX_PATH ;
 int strcat (int *,char const*) ;

__attribute__((used)) static void delete_manifest_file(const char *filename)
{
    CHAR path[MAX_PATH];

    GetTempPathA(sizeof(path), path);
    strcat(path, filename);
    DeleteFileA(path);
}

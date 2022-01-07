
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp_path ;
typedef int HANDLE ;


 int CREATE_ALWAYS ;
 int CreateFileA (char*,int,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetTempFileNameA (char*,char*,int ,char*) ;
 scalar_t__ GetTempPathA (int,char*) ;
 int INVALID_HANDLE_VALUE ;
 int MAX_PATH ;

__attribute__((used)) static HANDLE create_temp_file(char *temp_file)
{
    HANDLE file = INVALID_HANDLE_VALUE;
    char temp_path[MAX_PATH];

    if (GetTempPathA(sizeof(temp_path), temp_path))
    {
        if (GetTempFileNameA(temp_path, "img", 0, temp_file))
            file = CreateFileA(temp_file, GENERIC_READ | GENERIC_WRITE, 0, ((void*)0),
             CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    }
    return file;
}

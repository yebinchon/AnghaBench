
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp_path ;
typedef char WCHAR ;
typedef int HANDLE ;


 int CREATE_ALWAYS ;
 int CreateFileW (char*,int,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetTempFileNameW (char*,char const*,int ,char*) ;
 scalar_t__ GetTempPathW (int,char*) ;
 int INVALID_HANDLE_VALUE ;
 int MAX_PATH ;

__attribute__((used)) static HANDLE create_temp_file(WCHAR *temp_file)
{
    HANDLE file = INVALID_HANDLE_VALUE;
    WCHAR temp_path[MAX_PATH];

    if (GetTempPathW(sizeof(temp_path) / sizeof(temp_path[0]), temp_path))
    {
        static const WCHAR img[] = { 'i','m','g',0 };

        if (GetTempFileNameW(temp_path, img, 0, temp_file))
            file = CreateFileW(temp_file, GENERIC_READ | GENERIC_WRITE, 0, ((void*)0),
             CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    }
    return file;
}

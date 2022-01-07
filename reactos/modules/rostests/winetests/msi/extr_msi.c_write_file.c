
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;
typedef int CHAR ;


 int CREATE_ALWAYS ;
 int CloseHandle (int ) ;
 int CreateFileA (int const*,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int WriteFile (int ,char const*,int,int *,int *) ;

__attribute__((used)) static void write_file(const CHAR *filename, const char *data, int data_size)
{
    DWORD size;

    HANDLE hf = CreateFileA(filename, GENERIC_WRITE, 0, ((void*)0),
                            CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    WriteFile(hf, data, data_size, &size, ((void*)0));
    CloseHandle(hf);
}

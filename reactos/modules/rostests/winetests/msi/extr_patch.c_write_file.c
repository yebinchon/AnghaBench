
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (int ) ;
 int CreateFileA (char const*,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int WriteFile (int ,char const*,int ,int *,int *) ;

__attribute__((used)) static void write_file( const char *filename, const char *data, DWORD data_size )
{
    DWORD size;
    HANDLE file = CreateFileA( filename, GENERIC_WRITE, 0, ((void*)0),
                               CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0) );
    WriteFile( file, data, data_size, &size, ((void*)0) );
    CloseHandle( file );
}

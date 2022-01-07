
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 int INVALID_FILE_SIZE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int PROG_FILES_DIR ;
 int strcat (char*,char const*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static DWORD get_pf_file_size( const char *filename )
{
    char path[MAX_PATH];
    HANDLE file;
    DWORD size;

    strcpy( path, PROG_FILES_DIR );
    strcat( path, "\\");
    strcat( path, filename );

    file = CreateFileA( path, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0) );
    if (file == INVALID_HANDLE_VALUE)
        return INVALID_FILE_SIZE;

    size = GetFileSize( file, ((void*)0) );
    CloseHandle( file );
    return size;
}

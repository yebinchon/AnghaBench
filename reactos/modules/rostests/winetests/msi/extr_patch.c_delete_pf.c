
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 scalar_t__ DeleteFileA (char*) ;
 int MAX_PATH ;
 int PROG_FILES_DIR ;
 scalar_t__ RemoveDirectoryA (char*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static BOOL delete_pf( const char *rel_path, BOOL is_file )
{
    char path[MAX_PATH];

    strcpy( path, PROG_FILES_DIR );
    strcat( path, "\\" );
    strcat( path, rel_path );

    if (is_file)
        return DeleteFileA( path );
    else
        return RemoveDirectoryA( path );
}

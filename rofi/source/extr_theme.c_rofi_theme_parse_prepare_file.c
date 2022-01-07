
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GFile ;


 char* g_build_filename (char*,char*,int *) ;
 char* g_file_get_path (int *) ;
 int * g_file_new_for_path (char*) ;
 int g_free (char*) ;
 int g_object_unref (int *) ;
 char* g_path_get_dirname (char const*) ;
 int g_path_is_absolute (char*) ;
 char* rofi_expand_path (char const*) ;

char * rofi_theme_parse_prepare_file ( const char *file, const char *parent_file )
{
    char *filename = rofi_expand_path ( file );

    if ( parent_file != ((void*)0) && !g_path_is_absolute ( filename ) ) {
        char *basedir = g_path_get_dirname ( parent_file );
        char *path = g_build_filename ( basedir, filename, ((void*)0) );
        g_free ( filename );
        filename = path;
        g_free ( basedir );
    }
    GFile *gf = g_file_new_for_path ( filename );
    g_free ( filename );
    filename = g_file_get_path ( gf );
    g_object_unref ( gf );

    return filename;
}

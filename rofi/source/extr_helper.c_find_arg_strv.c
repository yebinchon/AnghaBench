
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** g_malloc0 (int) ;
 int stored_argc ;
 char** stored_argv ;
 scalar_t__ strcasecmp (char*,char const* const) ;

const char ** find_arg_strv ( const char *const key )
{
    const char **retv = ((void*)0);
    int length = 0;
    for ( int i = 0; i < stored_argc; i++ ) {
        if ( i < ( stored_argc - 1 ) && strcasecmp ( stored_argv[i], key ) == 0 ) {
            length++;
        }
    }
    if ( length > 0 ) {
        retv = g_malloc0 ( ( length + 1 ) * sizeof ( char* ) );
        int index = 0;
        for ( int i = 0; i < stored_argc; i++ ) {
            if ( i < ( stored_argc - 1 ) && strcasecmp ( stored_argv[i], key ) == 0 ) {
                retv[index++] = stored_argv[i + 1];
            }
        }
    }
    return retv;
}

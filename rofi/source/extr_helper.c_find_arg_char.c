
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int find_arg (char const* const) ;
 char helper_parse_char (int ) ;
 int stored_argc ;
 int * stored_argv ;

int find_arg_char ( const char * const key, char *val )
{
    int i = find_arg ( key );

    if ( val != ((void*)0) && i > 0 && i < ( stored_argc - 1 ) ) {
        *val = helper_parse_char ( stored_argv[i + 1] );
        return TRUE;
    }
    return FALSE;
}

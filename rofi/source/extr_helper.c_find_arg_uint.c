
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int find_arg (char const* const) ;
 int stored_argc ;
 int * stored_argv ;
 unsigned int strtoul (int ,int *,int) ;

int find_arg_uint ( const char * const key, unsigned int *val )
{
    int i = find_arg ( key );

    if ( val != ((void*)0) && i > 0 && i < ( stored_argc - 1 ) ) {
        *val = strtoul ( stored_argv[i + 1], ((void*)0), 10 );
        return TRUE;
    }
    return FALSE;
}

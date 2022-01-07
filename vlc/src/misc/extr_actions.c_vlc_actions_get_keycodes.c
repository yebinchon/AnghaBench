
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint_fast32_t ;


 int assert (int) ;
 int free (char*) ;
 int sprintf (char*,char*,char*,char const*) ;
 int strlen (char const*) ;
 char* strtok_r (char*,char*,char**) ;
 scalar_t__ unlikely (int) ;
 char* var_InheritString (int *,char*) ;
 int * vlc_alloc (size_t,int) ;
 int vlc_str2keycode (char*) ;

size_t
vlc_actions_get_keycodes(vlc_object_t *p_obj, const char *psz_key_name,
                        bool b_global, uint_fast32_t **pp_keycodes)
{
    char varname[12 + strlen( psz_key_name )];
    sprintf( varname, "%skey-%s", b_global ? "global-" : "", psz_key_name );

    *pp_keycodes = ((void*)0);

    char *psz_keys = var_InheritString( p_obj, varname );
    if( psz_keys == ((void*)0) )
        return 0;

    size_t i_nb_keycodes = 0;
    for( const char* psz_it = psz_keys; *psz_it; ++psz_it )
    {
        if( *psz_it == '\t' )
            ++i_nb_keycodes;
    }
    ++i_nb_keycodes;
    *pp_keycodes = vlc_alloc( i_nb_keycodes, sizeof( **pp_keycodes ) );
    if( unlikely( !*pp_keycodes ) )
    {
        free( psz_keys );
        return 0;
    }
    size_t i = 0;
    for( char *buf, *key = strtok_r( psz_keys, "\t", &buf );
         key != ((void*)0);
         key = strtok_r( ((void*)0), "\t", &buf ), ++i )
    {
        (*pp_keycodes)[i] = vlc_str2keycode( key );
    }
    assert( i == i_nb_keycodes );
    free( psz_keys );
    return i_nb_keycodes;
}

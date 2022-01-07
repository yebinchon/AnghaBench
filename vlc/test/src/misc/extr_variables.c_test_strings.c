
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_int_t ;


 unsigned int VAR_COUNT ;
 int VLC_VAR_STRING ;
 int assert (int) ;
 int free (char*) ;
 char** psz_var_name ;
 int strcmp (char*,char*) ;
 int var_Create (int *,char*,int ) ;
 int var_Destroy (int *,char*) ;
 char* var_GetNonEmptyString (int *,char*) ;
 char* var_GetString (int *,char*) ;
 int var_SetString (int *,char*,char*) ;

__attribute__((used)) static void test_strings( libvlc_int_t *p_libvlc )
{
    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_Create( p_libvlc, psz_var_name[i], VLC_VAR_STRING );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_SetString( p_libvlc, psz_var_name[i], psz_var_name[i] );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        char *psz_tmp = var_GetString( p_libvlc, psz_var_name[i] );

        assert( psz_tmp != ((void*)0) );
        assert( !strcmp( psz_tmp, psz_var_name[i] ) );
        free( psz_tmp );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        var_Destroy( p_libvlc, psz_var_name[i] );


    var_Create( p_libvlc, "bla", VLC_VAR_STRING );
    assert( var_GetNonEmptyString( p_libvlc, "bla" ) == ((void*)0) );
    var_SetString( p_libvlc, "bla", "" );
    assert( var_GetNonEmptyString( p_libvlc, "bla" ) == ((void*)0) );
    var_SetString( p_libvlc, "bla", "test" );

    char *psz_tmp = var_GetNonEmptyString( p_libvlc, "bla" );
    assert( psz_tmp != ((void*)0) );
    assert( !strcmp( psz_tmp, "test" ) );
    free( psz_tmp );
    var_Destroy( p_libvlc, "bla" );
}

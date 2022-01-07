
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_int_t ;


 int VLC_VAR_STRING ;
 int assert (int) ;
 char** psz_var_name ;
 int var_Create (int *,char const*,int ) ;
 int var_Destroy (int *,char const*) ;
 scalar_t__ var_InheritURational (int *,unsigned int*,unsigned int*,char const*) ;
 int var_SetString (int *,char const*,char*) ;

__attribute__((used)) static void test_fracts( libvlc_int_t *p_libvlc )
{
    const char *name = psz_var_name[0];
    unsigned num, den;

    var_Create( p_libvlc, name, VLC_VAR_STRING );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) != 0 );

    var_SetString( p_libvlc, name, "123garbage" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) != 0 );

    var_SetString( p_libvlc, name, "4/5garbage" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) != 0 );

    var_SetString( p_libvlc, name, "6.7garbage" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) != 0 );

    var_SetString( p_libvlc, name, "." );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) == 0 );
    assert( num == 0 && den == 1 );

    var_SetString( p_libvlc, name, "010" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) == 0 );
    assert( num == 10 && den == 1 );

    var_SetString( p_libvlc, name, "30" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) == 0 );
    assert( num == 30 && den == 1 );

    var_SetString( p_libvlc, name, "30.0" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) == 0 );
    assert( num == 30 && den == 1 );

    var_SetString( p_libvlc, name, "030.030" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) == 0 );
    assert( num == 3003 && den == 100 );

    var_SetString( p_libvlc, name, "60/2" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) == 0 );
    assert( num == 30 && den == 1 );

    var_SetString( p_libvlc, name, "29.97" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) == 0 );
    assert( num == 2997 && den == 100 );

    var_SetString( p_libvlc, name, "30000/1001" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) == 0 );
    assert( num == 30000 && den == 1001 );

    var_SetString( p_libvlc, name, ".125" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) == 0 );
    assert( num == 1 && den == 8 );

    var_SetString( p_libvlc, name, "12:9" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) == 0 );
    assert( num == 4 && den == 3 );

    var_SetString( p_libvlc, name, "000000/00000000" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) == 0 );
    assert( num == 0 && den == 0 );

    var_SetString( p_libvlc, name, "12345/0" );
    assert( var_InheritURational( p_libvlc, &num, &den, name ) == 0 );
    assert( num == 1 && den == 0 );

    var_Destroy( p_libvlc, name );
}

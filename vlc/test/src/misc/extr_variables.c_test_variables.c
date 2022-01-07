
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libvlc_int_t ;
struct TYPE_3__ {int * p_libvlc_int; } ;
typedef TYPE_1__ libvlc_instance_t ;


 int srand (int ) ;
 int test_address (int *) ;
 int test_booleans (int *) ;
 int test_callbacks (int *) ;
 int test_change (int *) ;
 int test_choices (int *) ;
 int test_creation_and_type (int *) ;
 int test_floats (int *) ;
 int test_fracts (int *) ;
 int test_integer (int *) ;
 int test_limits (int *) ;
 int test_log (char*) ;
 int test_strings (int *) ;
 int time (int *) ;

__attribute__((used)) static void test_variables( libvlc_instance_t *p_vlc )
{
    libvlc_int_t *p_libvlc = p_vlc->p_libvlc_int;
    srand( time( ((void*)0) ) );

    test_log( "Testing for integers\n" );
    test_integer( p_libvlc );

    test_log( "Testing for booleans\n" );
    test_booleans( p_libvlc );

    test_log( "Testing for floats\n" );
    test_floats( p_libvlc );

    test_log( "Testing for rationals\n" );
    test_fracts( p_libvlc );

    test_log( "Testing for strings\n" );
    test_strings( p_libvlc );

    test_log( "Testing for addresses\n" );
    test_address( p_libvlc );

    test_log( "Testing the callbacks\n" );
    test_callbacks( p_libvlc );

    test_log( "Testing the limits\n" );
    test_limits( p_libvlc );

    test_log( "Testing choices\n" );
    test_choices( p_libvlc );

    test_log( "Testing var_Change()\n" );
    test_change( p_libvlc );

    test_log( "Testing type at creation\n" );
    test_creation_and_type( p_libvlc );
}

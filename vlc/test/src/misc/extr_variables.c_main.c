
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_instance_t ;


 int assert (int ) ;
 int * libvlc_new (int ,int ) ;
 int libvlc_release (int *) ;
 int test_defaults_args ;
 int test_defaults_nargs ;
 int test_init () ;
 int test_log (char*) ;
 int test_variables (int *) ;

int main( void )
{
    libvlc_instance_t *p_vlc;

    test_init();

    test_log( "Testing the core variables\n" );
    p_vlc = libvlc_new( test_defaults_nargs, test_defaults_args );
    assert( p_vlc != ((void*)0) );

    test_variables( p_vlc );

    libvlc_release( p_vlc );

    return 0;
}

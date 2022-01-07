
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_instance_t ;


 int assert (int ) ;
 int * libvlc_new (int,char const**) ;
 int libvlc_release (int *) ;
 int libvlc_retain (int *) ;
 int test_log (char*) ;

__attribute__((used)) static void test_core (const char ** argv, int argc)
{
    libvlc_instance_t *vlc;

    test_log ("Testing core\n");

    vlc = libvlc_new (argc, argv);
    assert (vlc != ((void*)0));

    libvlc_retain (vlc);
    libvlc_release (vlc);
    libvlc_release (vlc);
}

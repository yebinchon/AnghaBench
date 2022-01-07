
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_instance_t ;


 int assert (int ) ;
 int libvlc_audio_filter_list_get (int *) ;
 int * libvlc_new (int,char const**) ;
 int libvlc_release (int *) ;
 int libvlc_video_filter_list_get (int *) ;
 int test_log (char*) ;
 int test_moduledescriptionlist (int ) ;

__attribute__((used)) static void test_audiovideofilterlists (const char ** argv, int argc)
{
    libvlc_instance_t *vlc;

    test_log ("Testing libvlc_(audio|video)_filter_list_get()\n");

    vlc = libvlc_new (argc, argv);
    assert (vlc != ((void*)0));

    test_moduledescriptionlist (libvlc_audio_filter_list_get (vlc));
    test_moduledescriptionlist (libvlc_video_filter_list_get (vlc));

    libvlc_release (vlc);
}

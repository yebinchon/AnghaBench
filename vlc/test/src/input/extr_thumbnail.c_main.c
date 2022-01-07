
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_instance_t ;


 int ARRAY_SIZE (char const**) ;
 int assert (int *) ;
 int * libvlc_new (int ,char const**) ;
 int libvlc_release (int *) ;
 int test_cancel_thumbnail (int *) ;
 int test_init () ;
 int test_thumbnails (int *) ;

int main()
{
    test_init();

    static const char * argv[] = {
        "-v",
        "--ignore-config",
    };
    libvlc_instance_t *vlc = libvlc_new(ARRAY_SIZE(argv), argv);
    assert(vlc);

    test_thumbnails( vlc );
    test_cancel_thumbnail( vlc );

    libvlc_release( vlc );
}

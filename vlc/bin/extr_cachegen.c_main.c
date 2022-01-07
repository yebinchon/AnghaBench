
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;
typedef int libvlc_instance_t ;


 int abort () ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 int * libvlc_new (int,char const**) ;
 int libvlc_release (int *) ;

 scalar_t__ setenv (char*,char const*,int) ;
 int usage (char*) ;
 int version () ;

int main (int argc, char *argv[])
{
    int optind = 1;


    for (int i = optind; i < argc; i++)
    {
        const char *path = argv[i];

        if (setenv ("VLC_PLUGIN_PATH", path, 1))
            abort ();

        const char *vlc_argv[4];
        int vlc_argc = 0;

        vlc_argv[vlc_argc++] = "--quiet";
        vlc_argv[vlc_argc++] = "--reset-plugins-cache";
        vlc_argv[vlc_argc++] = "--";
        vlc_argv[vlc_argc] = ((void*)0);

        libvlc_instance_t *vlc = libvlc_new (vlc_argc, vlc_argv);
        if (vlc == ((void*)0))
            return 1;
        libvlc_release(vlc);
    }

    return 0;
}

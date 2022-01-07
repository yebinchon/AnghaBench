
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_instance_t ;


 int * libvlc_new (int,char const* const*) ;

__attribute__((used)) static libvlc_instance_t *create_libvlc(void)
{
    static const char* const args[] = {
        "--intf", "dummy",
        "--vout", "dummy",
        "--no-audio",
        "--no-video-title-show",
        "--no-stats",
        "--no-sub-autodetect-file",
        "--no-inhibit",
        "--no-disable-screensaver",
        "--no-snapshot-preview",

        "--verbose=2",

    };

    return libvlc_new(sizeof args / sizeof *args, args);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int libvlc_instance_t ;
struct TYPE_7__ {char* psz_name; char* psz_description; struct TYPE_7__* p_next; } ;
typedef TYPE_1__ libvlc_audio_output_t ;
struct TYPE_8__ {char* psz_device; char* psz_description; struct TYPE_8__* p_next; } ;
typedef TYPE_2__ libvlc_audio_output_device_t ;


 int assert (int ) ;
 TYPE_2__* libvlc_audio_output_device_list_get (int *,char*) ;
 int libvlc_audio_output_device_list_release (TYPE_2__*) ;
 TYPE_1__* libvlc_audio_output_list_get (int *) ;
 int libvlc_audio_output_list_release (TYPE_1__*) ;
 int * libvlc_new (int ,int *) ;
 int libvlc_release (int *) ;
 int printf (char*,char*,char*) ;
 int puts (char*) ;

__attribute__((used)) static void test_audio_output (void)
{
    libvlc_instance_t *vlc = libvlc_new (0, ((void*)0));
    assert (vlc != ((void*)0));

    libvlc_audio_output_t *mods = libvlc_audio_output_list_get (vlc);
    assert (mods != ((void*)0));

    puts ("Audio outputs:");
    for (const libvlc_audio_output_t *o = mods; o != ((void*)0); o = o->p_next)
    {
        libvlc_audio_output_device_t *devs;

        printf(" %s: %s\n", o->psz_name, o->psz_description);

        devs = libvlc_audio_output_device_list_get (vlc, o->psz_name);
        if (devs == ((void*)0))
            continue;
        for (const libvlc_audio_output_device_t *d = devs;
             d != ((void*)0);
             d = d->p_next)
             printf("  %s: %s\n", d->psz_device, d->psz_description);

        libvlc_audio_output_device_list_release (devs);
    }
    libvlc_audio_output_list_release (mods);
    libvlc_release (vlc);
}

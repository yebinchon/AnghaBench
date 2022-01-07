
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ PaDeviceInfo ;


 int Pa_GetDeviceCount () ;
 TYPE_1__* Pa_GetDeviceInfo (int) ;
 int printf (char*,int,char*) ;

int print_audio_devices()
{
    int i = 0;

    for (i = 0; i < Pa_GetDeviceCount(); ++i) {
        const PaDeviceInfo *info = Pa_GetDeviceInfo(i);

        if (info)
            printf("%d) %s\n", i, info->name);
    }

    return 0;
}

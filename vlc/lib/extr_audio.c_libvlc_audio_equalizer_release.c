
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_equalizer_t ;


 int free (int *) ;

void libvlc_audio_equalizer_release( libvlc_equalizer_t *p_equalizer )
{
    free( p_equalizer );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ decoder_t ;
typedef int FILE ;


 int fclose (int *) ;

__attribute__((used)) static void CloseDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t *)p_this;
    FILE *stream = (void *)p_dec->p_sys;

    if( stream != ((void*)0) )
        fclose( stream );
}

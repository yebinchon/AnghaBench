
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_device; struct TYPE_4__* psz_description; struct TYPE_4__* p_next; } ;
typedef TYPE_1__ libvlc_audio_output_device_t ;


 int free (TYPE_1__*) ;

void libvlc_audio_output_device_list_release( libvlc_audio_output_device_t *l )
{
    while( l != ((void*)0) )
    {
        libvlc_audio_output_device_t *next = l->p_next;

        free( l->psz_description );
        free( l->psz_device );
        free( l );
        l = next;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p_address; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
typedef int audio_output_t ;


 int VLC_SUCCESS ;
 int aout_ChangeViewpoint (int *,int *) ;

__attribute__((used)) static int ViewpointCallback (vlc_object_t *obj, const char *var,
                              vlc_value_t prev, vlc_value_t cur, void *data)
{
    if( cur.p_address != ((void*)0) )
        aout_ChangeViewpoint((audio_output_t *)obj, cur.p_address );
    (void) var; (void) data; (void) prev;
    return VLC_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int psz_string; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
typedef int audio_output_t ;


 int VLC_SUCCESS ;
 int aout_InputRequestRestart (int *) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int FilterCallback (vlc_object_t *obj, const char *var,
                           vlc_value_t prev, vlc_value_t cur, void *data)
{
    if (strcmp(prev.psz_string, cur.psz_string))
        aout_InputRequestRestart ((audio_output_t *)obj);
    (void) var; (void) data;
    return VLC_SUCCESS;
}

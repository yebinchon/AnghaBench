
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* psz_string; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
typedef int audio_output_t ;


 int VLC_SUCCESS ;
 int VLC_VAR_STRING ;
 int aout_InputRequestRestart (int *) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int var_Create (int *,char*,int ) ;
 int var_SetString (int *,char*,char const*) ;

__attribute__((used)) static int VisualizationCallback (vlc_object_t *obj, const char *var,
                                  vlc_value_t oldval, vlc_value_t newval,
                                  void *data)
{
    const char *mode = newval.psz_string;

    if (!*mode)
        mode = "none";



    if (strcasecmp (mode, "none") && strcasecmp (mode, "goom")
     && strcasecmp (mode, "projectm") && strcasecmp (mode, "vsxu")
     && strcasecmp (mode, "glspectrum"))
    {
        var_Create (obj, "effect-list", VLC_VAR_STRING);
        var_SetString (obj, "effect-list", mode);
        mode = "visual";
    }

    var_SetString (obj, "audio-visual", mode);
    aout_InputRequestRestart ((audio_output_t *)obj);
    (void) var; (void) oldval; (void) data;
    return VLC_SUCCESS;
}

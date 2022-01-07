
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_value_t ;
typedef int vlc_object_t ;


 int ControlsReset (int *,void*) ;
 int VLC_SUCCESS ;

__attribute__((used)) static int ControlsResetCallback (vlc_object_t *obj, const char *var,
                                  vlc_value_t old, vlc_value_t cur, void *data)
{
    ControlsReset (obj, data);
    (void) var; (void) old; (void) cur;
    return VLC_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; struct TYPE_5__* next; } ;
typedef TYPE_1__ vlc_v4l2_ctrl_t ;
typedef int vlc_object_t ;


 int ControlSetCallback ;
 int ControlsResetCallback ;
 int free (TYPE_1__*) ;
 int var_DelCallback (int *,char*,int ,TYPE_1__*) ;
 int var_Destroy (int *,char*) ;

void ControlsDeinit (vlc_object_t *obj, vlc_v4l2_ctrl_t *list)
{
    var_DelCallback (obj, "reset", ControlsResetCallback, list);
    var_Destroy (obj, "reset");

    while (list != ((void*)0))
    {
        vlc_v4l2_ctrl_t *next = list->next;

        var_DelCallback (obj, list->name, ControlSetCallback, list);
        var_Destroy (obj, list->name);
        free (list);
        list = next;
    }

    var_Destroy (obj, "controls");
}

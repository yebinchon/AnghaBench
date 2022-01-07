
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; struct TYPE_3__* next; int default_value; int name; } ;
typedef TYPE_1__ vlc_v4l2_ctrl_t ;
typedef int vlc_object_t ;






 int var_SetBool (int *,int ,int ) ;
 int var_SetInteger (int *,int ,int ) ;

__attribute__((used)) static void ControlsReset (vlc_object_t *obj, vlc_v4l2_ctrl_t *list)
{
    while (list != ((void*)0))
    {
        switch (list->type)
        {
            case 130:
            case 128:
            case 129:
                var_SetInteger (obj, list->name, list->default_value);
                break;
            case 131:
                var_SetBool (obj, list->name, list->default_value);
                break;
            default:;
        }
        list = list->next;
    }
}

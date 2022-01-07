
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_6__ {int brightness; int contrast; int saturation; int hue; } ;
typedef TYPE_2__ filter_sys_t ;


 int BrightnessCallback ;
 int ContrastCallback ;
 int HueCallback ;
 int SaturationCallback ;
 int free (TYPE_2__*) ;
 int var_DelCallback (TYPE_1__*,char*,int ,int *) ;

__attribute__((used)) static void Close(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    filter_sys_t *sys = filter->p_sys;

    var_DelCallback(filter, "hue", HueCallback, &sys->hue);
    var_DelCallback(filter, "saturation", SaturationCallback,
                    &sys->saturation);
    var_DelCallback(filter, "contrast", ContrastCallback, &sys->contrast);
    var_DelCallback(filter, "brightness", BrightnessCallback,
                    &sys->brightness);
    free(sys);
}

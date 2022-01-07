
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_7__ {scalar_t__ format; } ;
typedef TYPE_1__ audio_volume_t ;
struct TYPE_8__ {int * module; TYPE_1__ object; } ;
typedef TYPE_2__ aout_volume_t ;


 int * module_need (TYPE_1__*,char*,int *,int) ;
 int module_unneed (TYPE_1__*,int *) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int ) ;

int aout_volume_SetFormat(aout_volume_t *vol, vlc_fourcc_t format)
{
    if (unlikely(vol == ((void*)0)))
        return -1;

    audio_volume_t *obj = &vol->object;
    if (vol->module != ((void*)0))
    {
        if (obj->format == format)
        {
            msg_Dbg (obj, "retaining sample format");
            return 0;
        }
        msg_Dbg (obj, "changing sample format");
        module_unneed(obj, vol->module);
    }

    obj->format = format;
    vol->module = module_need(obj, "audio volume", ((void*)0), 0);
    if (vol->module == ((void*)0))
        return -1;
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {unsigned int optflagc; int* optflagv; int lock; TYPE_2__* opaques; int * ppsz_options; scalar_t__ i_options; } ;
typedef TYPE_1__ input_item_t ;
struct TYPE_5__ {int value; int name; struct TYPE_5__* next; } ;
typedef TYPE_2__ input_item_opaque_t ;


 int VLC_INPUT_OPTION_TRUSTED ;
 int VLC_VAR_ADDRESS ;
 int assert (int) ;
 int var_Create (int *,int ,int ) ;
 int var_OptionParse (int *,int ,int) ;
 int var_SetAddress (int *,int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_item_ApplyOptions(vlc_object_t *obj, input_item_t *item)
{
    vlc_mutex_lock(&item->lock);
    assert(item->optflagc == (unsigned)item->i_options);

    for (unsigned i = 0; i < (unsigned)item->i_options; i++)
        var_OptionParse(obj, item->ppsz_options[i],
                        !!(item->optflagv[i] & VLC_INPUT_OPTION_TRUSTED));

    for (const input_item_opaque_t *o = item->opaques; o != ((void*)0); o = o->next)
    {
        var_Create(obj, o->name, VLC_VAR_ADDRESS);
        var_SetAddress(obj, o->name, o->value);
    }

    vlc_mutex_unlock(&item->lock);
}

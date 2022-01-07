
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_int; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
typedef int uint32_t ;
struct mapping {int action; } ;


 int VLC_SUCCESS ;
 int keycmp ;
 void** tfind (int *,void* const*,int ) ;
 int var_SetInteger (int *,char*,int ) ;

__attribute__((used)) static int vlc_key_to_action (vlc_object_t *obj, const char *varname,
                              vlc_value_t prevkey, vlc_value_t curkey, void *d)
{
    void *const *map = d;
    const void **pent;
    uint32_t keycode = curkey.i_int;

    pent = tfind (&keycode, map, keycmp);
    if (pent == ((void*)0))
        return VLC_SUCCESS;

    const struct mapping *ent = *pent;

    (void) varname;
    (void) prevkey;
    return var_SetInteger (obj, "key-action", ent->action);
}

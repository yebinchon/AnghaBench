
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_action_id_t ;
typedef int uint32_t ;


 scalar_t__ ACTIONID_COMBO_VOL_FOV_DOWN ;
 scalar_t__ ACTIONID_COMBO_VOL_FOV_UP ;
 scalar_t__ ACTIONID_JUMP_BACKWARD_EXTRASHORT ;
 scalar_t__ ACTIONID_JUMP_FORWARD_EXTRASHORT ;
 scalar_t__ ACTIONID_NONE ;
 int add_mapping (void**,int ,scalar_t__) ;

__attribute__((used)) static void add_wheel_mapping (void **map, uint32_t kmore, uint32_t kless,
                                 int mode)
{
    vlc_action_id_t amore = ACTIONID_NONE, aless = ACTIONID_NONE;

    switch (mode)
    {
        case 0:
            amore = ACTIONID_COMBO_VOL_FOV_UP;
            aless = ACTIONID_COMBO_VOL_FOV_DOWN;
            break;
        case 2:
            amore = ACTIONID_JUMP_FORWARD_EXTRASHORT;
            aless = ACTIONID_JUMP_BACKWARD_EXTRASHORT;
            break;
        case 3:
            amore = ACTIONID_JUMP_BACKWARD_EXTRASHORT;
            aless = ACTIONID_JUMP_FORWARD_EXTRASHORT;
            break;
    }

    if (amore != ACTIONID_NONE)
        add_mapping (map, kmore, amore);
    if (aless != ACTIONID_NONE)
        add_mapping (map, kless, aless);
}

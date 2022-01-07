
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {char** ppsz_keys; int * global_map; int * map; } ;
typedef TYPE_1__ vlc_actions_t ;
typedef int name ;
typedef int libvlc_int_t ;
struct TYPE_7__ {TYPE_1__* actions; } ;
struct TYPE_6__ {char* psz; int id; } ;


 int ACTIONS_COUNT ;
 int KEY_MOUSEWHEELDOWN ;
 int KEY_MOUSEWHEELLEFT ;
 int KEY_MOUSEWHEELRIGHT ;
 int KEY_MOUSEWHEELUP ;
 int MAXACTION ;
 int VLC_ENOMEM ;
 int * VLC_OBJECT (int *) ;
 int VLC_SUCCESS ;
 int VLC_VAR_INTEGER ;
 int abort () ;
 int add_wheel_mapping (int **,int ,int ,int ) ;
 int assert (int ) ;
 int init_action (int *,int **,char*,int ) ;
 TYPE_4__* libvlc_priv (int *) ;
 TYPE_1__* malloc (int) ;
 int msg_Err (int *,char*,char*,char*) ;
 TYPE_2__* s_names2actions ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ unlikely (int ) ;
 int var_AddCallback (int *,char*,int ,int **) ;
 int var_Create (int *,char*,int ) ;
 int var_InheritInteger (int *,char*) ;
 int vlc_key_to_action ;

int libvlc_InternalActionsInit (libvlc_int_t *libvlc)
{
    assert(libvlc != ((void*)0));

    vlc_object_t *obj = VLC_OBJECT(libvlc);
    vlc_actions_t *as = malloc (sizeof (*as) + (1 + ACTIONS_COUNT)
                      * sizeof (*as->ppsz_keys));

    if (unlikely(as == ((void*)0)))
        return VLC_ENOMEM;
    as->map = ((void*)0);
    as->global_map = ((void*)0);

    var_Create (obj, "key-pressed", VLC_VAR_INTEGER);
    var_Create (obj, "global-key-pressed", VLC_VAR_INTEGER);
    var_Create (obj, "key-action", VLC_VAR_INTEGER);


    for (size_t i = 0; i < ACTIONS_COUNT; i++)
    {

        if (i > 0
         && strcmp (s_names2actions[i-1].psz, s_names2actions[i].psz) >= 0)
        {
            msg_Err (libvlc, "key-%s and key-%s are not ordered properly",
                     s_names2actions[i-1].psz, s_names2actions[i].psz);
            abort ();
        }

        as->ppsz_keys[i] = s_names2actions[i].psz;

        char name[12 + MAXACTION];

        snprintf (name, sizeof (name), "global-key-%s", s_names2actions[i].psz);
        init_action (obj, &as->map, name + 7, s_names2actions[i].id);
        init_action (obj, &as->global_map, name, s_names2actions[i].id);
    }
    as->ppsz_keys[ACTIONS_COUNT] = ((void*)0);


    add_wheel_mapping (&as->map, KEY_MOUSEWHEELRIGHT, KEY_MOUSEWHEELLEFT,
                         var_InheritInteger (obj, "hotkeys-x-wheel-mode"));
    add_wheel_mapping (&as->map, KEY_MOUSEWHEELUP, KEY_MOUSEWHEELDOWN,
                         var_InheritInteger (obj, "hotkeys-y-wheel-mode"));

    libvlc_priv(libvlc)->actions = as;
    var_AddCallback (obj, "key-pressed", vlc_key_to_action, &as->map);
    var_AddCallback (obj, "global-key-pressed", vlc_key_to_action,
                     &as->global_map);
    return VLC_SUCCESS;
}

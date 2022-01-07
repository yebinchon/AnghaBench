
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int vlc_action_id_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ EEXIST ;
 scalar_t__ KEY_UNSET ;
 scalar_t__ add_mapping (void**,scalar_t__,int ) ;
 int free (char*) ;
 int msg_Warn (int *,char*,char*) ;
 char* strtok_r (char*,char*,char**) ;
 char* var_InheritString (int *,char const*) ;
 scalar_t__ vlc_str2keycode (char*) ;

__attribute__((used)) static void init_action (vlc_object_t *obj, void **map,
                            const char *confname, vlc_action_id_t action)
{
    char *keys = var_InheritString (obj, confname);
    if (keys == ((void*)0))
        return;

    for (char *buf, *key = strtok_r (keys, "\t", &buf);
         key != ((void*)0);
         key = strtok_r (((void*)0), "\t", &buf))
    {
        uint32_t code = vlc_str2keycode (key);
        if (code == KEY_UNSET)
        {
            msg_Warn (obj, "Key \"%s\" unrecognized", key);
            continue;
        }

        if (add_mapping (map, code, action) == EEXIST)
            msg_Warn (obj, "Key \"%s\" bound to multiple actions", key);
    }
    free (keys);
}

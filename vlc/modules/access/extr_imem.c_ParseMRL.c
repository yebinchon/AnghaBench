
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int VLC_VAR_DOINHERIT ;


 scalar_t__ asprintf (char**,char*,char*) ;
 int free (char*) ;
 int msg_Dbg (int *,char*,char*,...) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 int strtol (char*,int *,int ) ;
 int var_Create (int *,char*,int) ;
 int var_SetInteger (int *,char*,int ) ;
 int var_SetString (int *,char*,char*) ;

__attribute__((used)) static void ParseMRL(vlc_object_t *object, const char *psz_path)
{
    static const struct {
        const char *name;
        int type;
    } options[] = {
        { "id", 129 },
        { "group", 129 },
        { "cat", 129 },
        { "samplerate", 129 },
        { "channels", 129 },
        { "width", 129 },
        { "height", 129 },
        { "cookie", 128 },
        { "codec", 128 },
        { "language", 128 },
        { "dar", 128 },
        { "fps", 128 },
        { ((void*)0), -1 }
    };

    char *dup = strdup(psz_path);
    if (!dup)
        return;
    char *current = dup;

    while (current) {
        char *next = strchr(current, ':');
        if (next)
            *next++ = '\0';

        char *option = current;
        char *value = strchr(current, '=');
        if (value) {
            *value++ = '\0';
            msg_Dbg(object, "option '%s' value '%s'", option, value);
        } else {
            msg_Dbg(object, "option '%s' without value (unsupported)", option);
        }

        char *name;
        if (asprintf(&name, "imem-%s", option) < 0)
            name = ((void*)0);
        for (unsigned i = 0; name && options[i].name; i++) {
            if (strcmp(options[i].name, option))
                continue;

            var_Create(object, name, options[i].type | VLC_VAR_DOINHERIT);
            if (options[i].type == 129 && value) {
                var_SetInteger(object, name, strtol(value, ((void*)0), 0));
            } else if (options[i].type == 128 && value) {
                var_SetString(object, name, value);
            }
            break;
        }
        free(name);


        current = next;
    }
    free(dup);
}

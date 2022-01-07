
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int snd_device_name_free_hint (void**) ;
 char* snd_device_name_get_hint (void*,char*) ;
 scalar_t__ snd_device_name_hint (int,char*,void***) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 scalar_t__ unlikely (int ) ;
 char** xrealloc (char**,unsigned int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int EnumDevices(char const *varname,
                       char ***restrict idp, char ***restrict namep)
{
    void **hints;

    if (snd_device_name_hint(-1, "pcm", &hints) < 0)
        return -1;

    char **ids = ((void*)0), **names = ((void*)0);
    unsigned n = 0;
    bool hinted_default = 0;

    for (size_t i = 0; hints[i] != ((void*)0); i++)
    {
        void *hint = hints[i];

        char *name = snd_device_name_get_hint(hint, "NAME");
        if (unlikely(name == ((void*)0)))
            continue;

        char *desc = snd_device_name_get_hint(hint, "DESC");
        if (desc == ((void*)0))
            desc = xstrdup (name);
        for (char *lf = strchr(desc, '\n'); lf; lf = strchr(lf, '\n'))
            *lf = ' ';

        ids = xrealloc (ids, (n + 1) * sizeof (*ids));
        names = xrealloc (names, (n + 1) * sizeof (*names));
        ids[n] = name;
        names[n] = desc;
        n++;

        if (!strcmp(name, "default"))
            hinted_default = 1;
    }

    snd_device_name_free_hint(hints);

    if (!hinted_default)
    {
        ids = xrealloc (ids, (n + 1) * sizeof (*ids));
        names = xrealloc (names, (n + 1) * sizeof (*names));
        ids[n] = xstrdup ("default");
        names[n] = xstrdup (_("Default"));
        n++;
    }

    *idp = ids;
    *namep = names;
    (void) varname;
    return n;
}

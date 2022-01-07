
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int asprintf (char**,char*,char const*,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int getline (char**,size_t*,int *) ;
 char* malloc (size_t const) ;
 int memcpy (char*,char const*,size_t const) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t const) ;
 int strspn (char*,char*) ;

__attribute__((used)) static char *config_GetTypeDir (const char *xdg_name)
{
    const size_t namelen = strlen (xdg_name);
    const char *home = getenv ("HOME");
    const char *dir = getenv ("XDG_CONFIG_HOME");
    const char *file = "user-dirs.dirs";

    if (home == ((void*)0))
        return ((void*)0);
    if (dir == ((void*)0))
    {
        dir = home;
        file = ".config/user-dirs.dirs";
    }

    char *path;
    if (asprintf (&path, "%s/%s", dir, file) == -1)
        return ((void*)0);

    FILE *stream = fopen (path, "rte");
    free (path);
    path = ((void*)0);
    if (stream != ((void*)0))
    {
        char *linebuf = ((void*)0);
        size_t linelen = 0;

        while (getline (&linebuf, &linelen, stream) != -1)
        {
            char *ptr = linebuf;
            ptr += strspn (ptr, " \t");
            if (strncmp (ptr, "XDG_", 4))
                continue;
            ptr += 4;
            if (strncmp (ptr, xdg_name, namelen))
                continue;
            ptr += namelen;
            if (strncmp (ptr, "_DIR", 4))
                continue;
            ptr += 4;
            ptr += strspn (ptr, " \t");
            if (*ptr != '=')
                continue;
            ptr++;
            ptr += strspn (ptr, " \t");
            if (*ptr != '"')
                continue;
            ptr++;
            linelen -= ptr - linebuf;

            char *out;
            if (strncmp (ptr, "$HOME", 5))
            {
                path = malloc (linelen);
                if (path == ((void*)0))
                    continue;
                out = path;
            }
            else
            {
                const size_t homelen = strlen (home);
                ptr += 5;
                path = malloc (homelen + linelen - 5);
                if (path == ((void*)0))
                    continue;
                memcpy (path, home, homelen);
                out = path + homelen;
            }

            while (*ptr != '"')
            {
                if (*ptr == '\\')
                    ptr++;
                if (*ptr == '\0')
                {
                    free (path);
                    path = ((void*)0);
                    break;
                }
                *(out++) = *(ptr++);
            }
            if (path != ((void*)0))
                *out = '\0';
            break;
        }
        free (linebuf);
        fclose (stream);
    }


    if (path == ((void*)0))
    {
        if (strcmp (xdg_name, "DESKTOP") == 0)
        {
            if (asprintf (&path, "%s/Desktop", home) == -1)
                return ((void*)0);
        }
        else
            path = strdup (home);
    }

    return path;
}

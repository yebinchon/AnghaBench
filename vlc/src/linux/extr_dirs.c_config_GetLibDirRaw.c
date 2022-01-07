
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 char* LIBDIR ;
 scalar_t__ config_GetLibDir ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int sscanf (char*,char*,void**,void**) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *config_GetLibDirRaw(void)
{
    char *path = ((void*)0);

    FILE *maps = fopen ("/proc/self/maps", "rte");
    if (maps == ((void*)0))
        goto error;

    char *line = ((void*)0);
    size_t linelen = 0;
    uintptr_t needle = (uintptr_t)config_GetLibDir;

    for (;;)
    {
        ssize_t len = getline (&line, &linelen, maps);
        if (len == -1)
            break;

        void *start, *end;
        if (sscanf (line, "%p-%p", &start, &end) < 2)
            continue;

        if (needle < (uintptr_t)start || (uintptr_t)end <= needle)
            continue;

        char *dir = strchr (line, '/');
        if (dir == ((void*)0))
            continue;

        char *file = strrchr (line, '/');
        if (end == ((void*)0))
            continue;
        *file = '\0';

        path = strdup(dir);
        break;
    }

    free (line);
    fclose (maps);
error:
    if (path == ((void*)0))
        path = strdup(LIBDIR);
    return path;
}

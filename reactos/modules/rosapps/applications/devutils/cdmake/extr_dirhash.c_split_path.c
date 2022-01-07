
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (int) ;
 char* max (char*,char*) ;
 int memcpy (char*,char const*,int) ;
 char* strdup (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void
split_path(const char *path, char **dirname, char **filename )
{
    const char *result;


    char *last_slash_1 = strrchr(path, '/');
    char *last_slash_2 = strrchr(path, '\\');

    if (last_slash_1 || last_slash_2)
        result = max(last_slash_1, last_slash_2) + 1;
    else
        result = path;


    if (filename)
        *filename = strdup(result);


    while (result > path && (*(result-1) == '/' || *(result-1) == '\\'))
        result--;


    *dirname = malloc(result - path + 1);
    if (result > path)
        memcpy(*dirname, path, result - path);
    (*dirname)[result - path] = '\0';
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char const* pw_dir; } ;
typedef int new_path ;


 int SEAF_PATH_MAX ;
 char* g_get_home_dir () ;
 int getcwd (char*,int) ;
 int geteuid () ;
 struct passwd* getpwnam (char*) ;
 struct passwd* getpwuid (int ) ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,int) ;
 char* strdup (char*) ;
 int strlen (char const*) ;

char*
ccnet_expand_path (const char *src)
{
    const char *next_in, *ntoken;
    char new_path[SEAF_PATH_MAX + 1];
    char *next_out;
    int len;


    if (!src || *src == '\0')
        return ((void*)0);
    if (strlen(src) > SEAF_PATH_MAX)
        return ((void*)0);

    next_in = src;
    next_out = new_path;
    *next_out = '\0';

    if (*src == '~') {

        struct passwd *pw = ((void*)0);

        for ( ; *next_in != '/' && *next_in != '\0'; next_in++) ;

        len = next_in - src;
        if (len == 1) {
            pw = getpwuid (geteuid());
        } else {

            memcpy (new_path, src, len);
            new_path[len] = '\0';
            pw = getpwnam (new_path + 1);
        }
        if (pw == ((void*)0))
            return ((void*)0);

        len = strlen (pw->pw_dir);
        memcpy (new_path, pw->pw_dir, len);
        next_out = new_path + len;
        *next_out = '\0';

        if (*next_in == '\0')
            return strdup (new_path);
    } else if (*src != '/') {
        getcwd (new_path, SEAF_PATH_MAX);
        for ( ; *next_out; next_out++) ;
    }

    while (*next_in != '\0') {

        for (ntoken = next_in; *ntoken == '/'; ntoken++) ;

        for (next_in = ntoken; *next_in != '/'
                 && *next_in != '\0'; next_in++) ;

        len = next_in - ntoken;

        if (len == 0) {

            *next_out++ = '/';
            *next_out = '\0';
            break;
        }

        if (len == 2 && ntoken[0] == '.' && ntoken[1] == '.')
        {

            for (; next_out > new_path && *next_out != '/'; next_out--)
                ;
            *next_out = '\0';
        } else if (ntoken[0] != '.' || len != 1) {

            *next_out++ = '/';
            memcpy (next_out, ntoken, len);
            next_out += len;
            *next_out = '\0';
        }
    }


    if (new_path[0] == '\0') {
        new_path[0] = '/';
        new_path[1] = '\0';
    }
    return strdup (new_path);

}

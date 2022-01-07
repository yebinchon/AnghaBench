
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,...) ;
 int free (char*) ;
 char* memchr (char const*,char,int) ;
 char* memmove (char*,char*,scalar_t__) ;
 char* strchr (char*,char) ;
 int strcspn (char*,char*) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 int strncasecmp (char const*,char*,int) ;
 char* strndup (char*,int) ;
 char* strstr (char const*,char*) ;
 int strtol (char*,char**,int ) ;
 scalar_t__ unlikely (int ) ;
 int vlc_uri_decode (char*) ;

char *vlc_uri2path (const char *url)
{
    char *ret = ((void*)0);
    char *end;

    char *path = strstr (url, "://");
    if (path == ((void*)0))
        return ((void*)0);

    end = memchr (url, '/', path - url);
    size_t schemelen = ((end != ((void*)0)) ? end : path) - url;
    path += 3;


    end = path + strcspn (path, "?#");
    path = strndup (path, end - path);
    if (unlikely(path == ((void*)0)))
        return ((void*)0);


    vlc_uri_decode (path);

    if (schemelen == 4 && !strncasecmp (url, "file", 4))
    {


        if (*path == '/')
            return path;

        if (!strncasecmp (path, "localhost/", 10))
            return memmove (path, path + 9, strlen (path + 9) + 1);
    }
    else
    if (schemelen == 2 && !strncasecmp (url, "fd", 2))
    {
        int fd = strtol (path, &end, 0);

        if (*end)
            goto out;


        switch (fd)
        {
            case 0:
                ret = strdup ("/dev/stdin");
                break;
            case 1:
                ret = strdup ("/dev/stdout");
                break;
            case 2:
                ret = strdup ("/dev/stderr");
                break;
            default:
                if (asprintf (&ret, "/dev/fd/%d", fd) == -1)
                    ret = ((void*)0);
        }





    }

out:
    free (path);
    return ret;
}

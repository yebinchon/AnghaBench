
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int strncasecmp (char const*,char const*,size_t) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static bool rdh_file_has_ext(const char *psz_filename,
                             const char *psz_ignored_exts)
{
    if (psz_ignored_exts == ((void*)0))
        return 0;

    const char *ext = strrchr(psz_filename, '.');
    if (ext == ((void*)0))
        return 0;

    size_t extlen = strlen(++ext);

    for (const char *type = psz_ignored_exts, *end; type[0]; type = end + 1)
    {
        end = strchr(type, ',');
        if (end == ((void*)0))
            end = type + strlen(type);

        if (type + extlen == end && !strncasecmp(ext, type, extlen))
            return 1;

        if (*end == '\0')
            break;
    }

    return 0;
}

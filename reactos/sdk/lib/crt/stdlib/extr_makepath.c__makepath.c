
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char const*,size_t) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

void _makepath(char* path, const char* drive, const char* dir, const char* fname, const char* ext)
{
    char *p = path;

    if ( !path )
        return;

    if (drive && drive[0])
    {
        *p++ = drive[0];
        *p++ = ':';
    }
    if (dir && dir[0])
    {
        size_t len = strlen(dir);
        memmove(p, dir, len);
        p += len;
        if (p[-1] != '/' && p[-1] != '\\')
            *p++ = '\\';
    }
    if (fname && fname[0])
    {
        size_t len = strlen(fname);
        memmove(p, fname, len);
        p += len;
    }
    if (ext && ext[0])
    {
        if (ext[0] != '.')
            *p++ = '.';
        strcpy(p, ext);
    }
    else
        *p = '\0';
}

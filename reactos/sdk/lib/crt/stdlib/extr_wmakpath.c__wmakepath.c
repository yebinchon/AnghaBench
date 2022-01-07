
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int memmove (char*,char const*,size_t) ;
 int strcpyW (char*,char const*) ;
 size_t strlenW (char const*) ;

void _wmakepath(wchar_t* path, const wchar_t* drive, const wchar_t* dir, const wchar_t* fname, const wchar_t* ext)
{
    wchar_t *p = path;

    if ( !path )
        return;

    if (drive && drive[0])
    {
        *p++ = drive[0];
        *p++ = ':';
    }
    if (dir && dir[0])
    {
        size_t len = strlenW(dir);
        memmove(p, dir, len * sizeof(wchar_t));
        p += len;
        if (p[-1] != '/' && p[-1] != '\\')
            *p++ = '\\';
    }
    if (fname && fname[0])
    {
        size_t len = strlenW(fname);
        memmove(p, fname, len * sizeof(wchar_t));
        p += len;
    }
    if (ext && ext[0])
    {
        if (ext[0] != '.')
            *p++ = '.';
        strcpyW(p, ext);
    }
    else
        *p = '\0';
}

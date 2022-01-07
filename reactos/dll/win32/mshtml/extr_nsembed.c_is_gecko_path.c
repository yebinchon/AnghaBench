
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int URL_UNESCAPE_INPLACE ;
 int UrlUnescapeW (char*,int *,int *,int ) ;
 int gecko_path ;
 size_t gecko_path_len ;
 int heap_free (char*) ;
 char* heap_strdupUtoW (char const*) ;
 int strcmpiW (char*,int ) ;
 size_t strlenW (char*) ;

BOOL is_gecko_path(const char *path)
{
    WCHAR *buf, *ptr;
    BOOL ret;

    buf = heap_strdupUtoW(path);
    if(!buf || strlenW(buf) < gecko_path_len)
        return FALSE;

    for(ptr = buf; *ptr; ptr++) {
        if(*ptr == '\\')
            *ptr = '/';
    }

    UrlUnescapeW(buf, ((void*)0), ((void*)0), URL_UNESCAPE_INPLACE);
    buf[gecko_path_len] = 0;

    ret = !strcmpiW(buf, gecko_path);
    heap_free(buf);
    return ret;
}

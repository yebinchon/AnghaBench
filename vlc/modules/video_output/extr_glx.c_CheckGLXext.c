
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Display ;


 char* glXQueryExtensionsString (int *,unsigned int) ;
 int memcmp (char const*,char const*,size_t const) ;
 size_t strcspn (char const*,char*) ;
 size_t strlen (char const*) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static bool CheckGLXext (Display *dpy, unsigned snum, const char *ext)
{
    const char *exts = glXQueryExtensionsString (dpy, snum);
    const size_t extlen = strlen (ext);

    while (*exts)
    {
        exts += strspn (exts, " ");

        size_t len = strcspn (exts, " ");
        if (len == extlen && !memcmp (exts, ext, extlen))
            return 1;
        exts += len;
    }
    return 0;
}

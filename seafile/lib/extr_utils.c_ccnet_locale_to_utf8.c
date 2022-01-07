
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gsize ;
typedef char gchar ;
typedef int GError ;


 char* g_locale_to_utf8 (char const*,int ,int *,int *,int **) ;
 int strlen (char const*) ;

char *ccnet_locale_to_utf8 (const gchar *src)
{
    if (!src)
        return ((void*)0);

    gsize bytes_read = 0;
    gsize bytes_written = 0;
    GError *error = ((void*)0);
    gchar *dst = ((void*)0);

    dst = g_locale_to_utf8
        (src,
         strlen(src),
         &bytes_read,
         &bytes_written,
         &error);

    if (error) {
        return ((void*)0);
    }

    return dst;
}

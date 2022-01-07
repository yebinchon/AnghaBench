
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gssize ;
typedef int gsize ;


 char* g_convert_with_fallback (char const*,int ,char*,char*,char*,int *,int *,int *) ;

char * rofi_latin_to_utf8_strdup ( const char *input, gssize length )
{
    gsize slength = 0;
    return g_convert_with_fallback ( input, length, "UTF-8", "latin1", "\uFFFD", ((void*)0), &slength, ((void*)0) );
}

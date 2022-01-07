
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 char* malloc (size_t) ;
 int memcpy (char*,int const*,size_t) ;

__attribute__((used)) static char *hpack_decode_str_raw(const uint8_t *data, size_t length)
{
    char *s = malloc(length + 1);
    if (s != ((void*)0))
    {
        memcpy(s, data, length);
        s[length] = '\0';
    }
    return s;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decode_char (char const) ;
 char* grab_memory (size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static char* decodeA(const char* str)
{
    char* ptr;
    size_t len,i;

    len = strlen(str) / 2;
    if (!len--) return ((void*)0);
    ptr = grab_memory(len + 1);
    for (i = 0; i < len; i++)
        ptr[i] = (decode_char(str[2 * i]) << 4) | decode_char(str[2 * i + 1]);
    ptr[len] = '\0';
    return ptr;
}

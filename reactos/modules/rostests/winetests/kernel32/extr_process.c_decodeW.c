
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int decode_char (char const) ;
 scalar_t__ grab_memory (size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static WCHAR* decodeW(const char* str)
{
    size_t len;
    WCHAR* ptr;
    int i;

    len = strlen(str) / 4;
    if (!len--) return ((void*)0);
    ptr = (WCHAR*)grab_memory(len * 2 + 1);
    for (i = 0; i < len; i++)
        ptr[i] = (decode_char(str[4 * i]) << 12) |
            (decode_char(str[4 * i + 1]) << 8) |
            (decode_char(str[4 * i + 2]) << 4) |
            (decode_char(str[4 * i + 3]) << 0);
    ptr[len] = '\0';
    return ptr;
}

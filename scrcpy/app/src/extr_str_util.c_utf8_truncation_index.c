
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;

size_t
utf8_truncation_index(const char *utf8, size_t max_len) {
    size_t len = strlen(utf8);
    if (len <= max_len) {
        return len;
    }
    len = max_len;

    while ((utf8[len] & 0x80) != 0 && (utf8[len] & 0xc0) != 0xc0) {


        len--;
    }
    return len;
}

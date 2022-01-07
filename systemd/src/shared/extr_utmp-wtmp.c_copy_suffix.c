
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static void copy_suffix(char *buf, size_t buf_size, const char *src) {
        size_t l;

        l = strlen(src);
        if (l < buf_size)
                strncpy(buf, src, buf_size);
        else
                memcpy(buf, src + l - buf_size, buf_size);
}

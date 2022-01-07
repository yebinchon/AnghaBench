
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static inline void strncpy_exact(char *buf, const char *src, size_t buf_len) {
        strncpy(buf, src, buf_len);
}

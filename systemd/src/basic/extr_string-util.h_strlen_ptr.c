
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;

__attribute__((used)) static inline size_t strlen_ptr(const char *s) {
        if (!s)
                return 0;

        return strlen(s);
}

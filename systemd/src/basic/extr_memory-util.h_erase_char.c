
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int explicit_bzero_safe (char*,int) ;

__attribute__((used)) static inline void erase_char(char *p) {
        explicit_bzero_safe(p, sizeof(char));
}

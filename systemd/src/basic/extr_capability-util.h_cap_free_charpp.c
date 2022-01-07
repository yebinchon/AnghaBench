
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cap_free (char*) ;

__attribute__((used)) static inline void cap_free_charpp(char **p) {
        if (*p)
                cap_free(*p);
}

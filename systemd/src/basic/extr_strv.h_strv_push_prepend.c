
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strv_insert (char***,int ,char*) ;

__attribute__((used)) static inline int strv_push_prepend(char ***l, char *value) {
        return strv_insert(l, 0, value);
}

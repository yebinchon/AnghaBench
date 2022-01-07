
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* zstrdup (char const*) ;

char *RM_Strdup(const char *str) {
    return zstrdup(str);
}

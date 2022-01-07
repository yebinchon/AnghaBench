
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

__attribute__((used)) static inline void
remove_trail_slash (char *path)
{
    int tail = strlen (path) - 1;
    while (tail >= 0 && (path[tail] == '/' || path[tail] == '\\'))
        path[tail--] = '\0';
}

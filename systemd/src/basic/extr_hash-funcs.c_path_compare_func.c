
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int path_compare (char const*,char const*) ;

int path_compare_func(const char *a, const char *b) {
        return path_compare(a, b);
}

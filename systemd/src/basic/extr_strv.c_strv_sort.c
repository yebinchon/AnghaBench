
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int str_compare ;
 int strv_length (char**) ;
 int typesafe_qsort (char**,int ,int ) ;

char **strv_sort(char **l) {
        typesafe_qsort(l, strv_length(l), str_compare);
        return l;
}

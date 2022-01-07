
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char* const,char* const) ;

__attribute__((used)) static int str_compare(char * const *a, char * const *b) {
        return strcmp(*a, *b);
}

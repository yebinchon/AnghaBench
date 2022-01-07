
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int basename (char* const) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int base_cmp(char * const *a, char * const *b) {
        return strcmp(basename(*a), basename(*b));
}

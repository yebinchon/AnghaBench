
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cat3 (char const*,char const*,int *) ;

__attribute__((used)) static char* cat2(char const* str1, char const* str2) {
    return cat3(str1, str2, ((void*)0));
}

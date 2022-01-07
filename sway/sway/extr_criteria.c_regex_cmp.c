
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcre ;


 int pcre_exec (int const*,int *,char const*,int ,int ,int ,int *,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int regex_cmp(const char *item, const pcre *regex) {
 return pcre_exec(regex, ((void*)0), item, strlen(item), 0, 0, ((void*)0), 0);
}

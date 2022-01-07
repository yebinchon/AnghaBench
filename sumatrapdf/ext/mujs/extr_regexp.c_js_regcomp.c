
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Reprog ;


 int default_alloc ;
 int * regcompx (int ,int *,char const*,int,char const**) ;

Reprog *regcomp(const char *pattern, int cflags, const char **errorp)
{
 return regcompx(default_alloc, ((void*)0), pattern, cflags, errorp);
}

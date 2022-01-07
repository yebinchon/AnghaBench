
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getFmt (char const*) ;
 int sscanf (char const*,int ,int*) ;

long
my_atoi(const char *a)
{
    int i = 0;
    sscanf(a, getFmt(a), &i);
    return i;
}

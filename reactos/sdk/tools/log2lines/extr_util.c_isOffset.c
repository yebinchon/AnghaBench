
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getFmt (char const*) ;
 int sscanf (char const*,int ,int*) ;
 scalar_t__ strchr (char const*,char) ;

int
isOffset(const char *a)
{
    int i = 0;
    if (strchr(a, '.'))
        return 0;
    return sscanf(a, getFmt(a), &i);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char*,int) ;

__attribute__((used)) static bool isurisubdelim(int c)
{
    return strchr("!$&'()*+,;=", c) != ((void*)0);
}

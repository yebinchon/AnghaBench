
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ goodtagchar (char const) ;

const char *
findbadtagchar (const char *tag)
{
    while (*tag)
        if (goodtagchar (*tag)) tag++;
        else return tag;
    return ((void*)0);
}

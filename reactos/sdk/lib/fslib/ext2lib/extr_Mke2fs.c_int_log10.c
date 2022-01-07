
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int int_log10(unsigned int arg)
{
    int l;

    for (l=0; arg ; l++)
        arg = arg / 10;

    return l;
}

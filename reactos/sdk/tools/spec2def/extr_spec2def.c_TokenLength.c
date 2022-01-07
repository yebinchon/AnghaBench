
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IsSeparator (int ) ;

int
TokenLength(const char *pc)
{
    int length = 0;

    while (!IsSeparator(*pc++)) length++;

    return length;
}

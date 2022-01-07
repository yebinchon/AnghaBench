
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putc_unlocked (int,int ) ;
 int stdout ;

int putchar_unlocked (int c)
{
    return putc_unlocked (c, stdout);
}

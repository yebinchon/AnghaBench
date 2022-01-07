
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* brk (void*) ;

__attribute__((used)) static void *
do_brk(void *addr)
{
    return brk(addr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int physmem ;
 int ptob (int ) ;

uint64_t
arc_all_memory(void)
{
 return (ptob(physmem) / 2);
}

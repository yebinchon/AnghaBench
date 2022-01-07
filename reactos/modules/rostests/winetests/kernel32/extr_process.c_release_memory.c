
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memory ;
 int memory_index ;

__attribute__((used)) static void release_memory(void)
{
    memory_index = memory;
}

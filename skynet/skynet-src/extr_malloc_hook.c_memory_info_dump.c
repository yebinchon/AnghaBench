
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int je_malloc_stats_print (int ,int ,int ) ;

void
memory_info_dump(void) {
 je_malloc_stats_print(0,0,0);
}

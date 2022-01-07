
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initial_memory_usage; int jemalloc_bg_thread; } ;


 int bioInit () ;
 int initThreadedIO () ;
 TYPE_1__ server ;
 int set_jemalloc_bg_thread (int ) ;
 int zmalloc_used_memory () ;

void InitServerLast() {
    bioInit();
    initThreadedIO();
    set_jemalloc_bg_thread(server.jemalloc_bg_thread);
    server.initial_memory_usage = zmalloc_used_memory();
}

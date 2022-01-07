
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int member_0; } ;
typedef TYPE_1__ Threadset ;
struct TYPE_10__ {int member_0; } ;
typedef TYPE_2__ Error ;


 int join_all_threads (TYPE_2__*,TYPE_1__*) ;
 int launch_thread (TYPE_2__*,TYPE_1__*,int ,void*) ;
 int print_and_free_err (TYPE_2__*) ;
 int setstoptime (TYPE_2__*,int) ;
 int sqlite3_enable_shared_cache (int) ;
 int stress_thread_1 ;
 int stress_thread_2 ;
 int stress_thread_3 ;
 int stress_thread_4 ;
 int stress_thread_5 ;

__attribute__((used)) static void stress1(int nMs){
  Error err = {0};
  Threadset threads = {0};

  setstoptime(&err, nMs);
  sqlite3_enable_shared_cache(1);

  launch_thread(&err, &threads, stress_thread_1, 0);
  launch_thread(&err, &threads, stress_thread_1, 0);

  launch_thread(&err, &threads, stress_thread_2, 0);
  launch_thread(&err, &threads, stress_thread_2, 0);

  launch_thread(&err, &threads, stress_thread_3, 0);
  launch_thread(&err, &threads, stress_thread_3, 0);

  launch_thread(&err, &threads, stress_thread_4, 0);
  launch_thread(&err, &threads, stress_thread_4, 0);

  launch_thread(&err, &threads, stress_thread_5, 0);
  launch_thread(&err, &threads, stress_thread_5, (void*)1);

  join_all_threads(&err, &threads);
  sqlite3_enable_shared_cache(0);

  print_and_free_err(&err);
}

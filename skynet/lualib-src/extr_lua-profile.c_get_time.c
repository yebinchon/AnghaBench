
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int task_info_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct TYPE_2__ {int seconds; int microseconds; } ;
struct task_thread_times_info {TYPE_1__ user_time; } ;
typedef int mach_msg_type_number_t ;


 int CLOCK_THREAD_CPUTIME_ID ;
 scalar_t__ KERN_SUCCESS ;
 double MICROSEC ;
 double NANOSEC ;
 int TASK_THREAD_TIMES_INFO ;
 int TASK_THREAD_TIMES_INFO_COUNT ;
 int clock_gettime (int ,struct timespec*) ;
 int mach_task_self () ;
 scalar_t__ task_info (int ,int ,int ,int *) ;

__attribute__((used)) static double
get_time() {

 struct timespec ti;
 clock_gettime(CLOCK_THREAD_CPUTIME_ID, &ti);

 int sec = ti.tv_sec & 0xffff;
 int nsec = ti.tv_nsec;

 return (double)sec + (double)nsec / NANOSEC;
}

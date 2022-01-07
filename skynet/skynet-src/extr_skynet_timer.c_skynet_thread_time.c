
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int task_info_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {scalar_t__ microseconds; scalar_t__ seconds; } ;
struct task_thread_times_info {TYPE_1__ user_time; } ;
typedef int mach_msg_type_number_t ;


 int CLOCK_THREAD_CPUTIME_ID ;
 scalar_t__ KERN_SUCCESS ;
 int MICROSEC ;
 int NANOSEC ;
 int TASK_THREAD_TIMES_INFO ;
 int TASK_THREAD_TIMES_INFO_COUNT ;
 int clock_gettime (int ,struct timespec*) ;
 int mach_task_self () ;
 scalar_t__ task_info (int ,int ,int ,int *) ;

uint64_t
skynet_thread_time(void) {

 struct timespec ti;
 clock_gettime(CLOCK_THREAD_CPUTIME_ID, &ti);

 return (uint64_t)ti.tv_sec * MICROSEC + (uint64_t)ti.tv_nsec / (NANOSEC / MICROSEC);
}

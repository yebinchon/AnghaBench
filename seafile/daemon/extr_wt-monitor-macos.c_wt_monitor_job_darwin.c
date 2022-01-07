
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafWTMonitor ;


 int CFRunLoopRun () ;
 int add_command_pipe (int *) ;

__attribute__((used)) static void *
wt_monitor_job_darwin (void *vmonitor)
{
    SeafWTMonitor *monitor = (SeafWTMonitor *)vmonitor;

    add_command_pipe (monitor);
    while (1) {
        CFRunLoopRun();
    }
    return ((void*)0);
}

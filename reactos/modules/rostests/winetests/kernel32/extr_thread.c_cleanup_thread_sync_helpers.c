
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseHandle (int ) ;
 int start_event ;
 int stop_event ;

__attribute__((used)) static void cleanup_thread_sync_helpers(void)
{
  CloseHandle(start_event);
  CloseHandle(stop_event);
}

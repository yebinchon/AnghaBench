
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CreateEventW (int *,int ,int ,int *) ;
 int FALSE ;
 int TRUE ;
 int num_synced ;
 int ok (int ,char*) ;
 int * start_event ;
 int * stop_event ;

__attribute__((used)) static void init_thread_sync_helpers(void)
{
  start_event = CreateEventW(((void*)0), TRUE, FALSE, ((void*)0));
  ok(start_event != ((void*)0), "CreateEvent failed\n");
  stop_event = CreateEventW(((void*)0), TRUE, FALSE, ((void*)0));
  ok(stop_event != ((void*)0), "CreateEvent failed\n");
  num_synced = -1;
}

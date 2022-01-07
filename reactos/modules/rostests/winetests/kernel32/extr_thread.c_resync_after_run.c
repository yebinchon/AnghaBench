
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef scalar_t__ DWORD ;


 int InterlockedDecrement (int *) ;
 int ResetEvent (int ) ;
 int SetEvent (int ) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 int assert (int) ;
 int num_synced ;
 int ok (int,char*) ;
 int start_event ;
 int stop_event ;

__attribute__((used)) static void resync_after_run(void)
{
  LONG num = InterlockedDecrement(&num_synced);
  assert(-1 <= num && num <= 1);
  if (num == -1)
  {
      ResetEvent( start_event );
      SetEvent( stop_event );
  }
  else
  {
    DWORD ret = WaitForSingleObject(stop_event, 10000);
    ok(ret == WAIT_OBJECT_0, "WaitForSingleObject failed\n");
  }
}

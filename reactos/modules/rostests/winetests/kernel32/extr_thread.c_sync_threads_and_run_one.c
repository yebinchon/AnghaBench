
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int InterlockedIncrement (int *) ;
 int ResetEvent (int ) ;
 int SetEvent (int ) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 int assert (int) ;
 int num_synced ;
 int ok (int,char*,scalar_t__) ;
 int start_event ;
 int stop_event ;

__attribute__((used)) static BOOL sync_threads_and_run_one(DWORD sync_id, DWORD my_id)
{
  LONG num = InterlockedIncrement(&num_synced);
  assert(-1 <= num && num <= 1);
  if (num == 1)
  {
      ResetEvent( stop_event );
      SetEvent( start_event );
  }
  else
  {
    DWORD ret = WaitForSingleObject(start_event, 10000);
    ok(ret == WAIT_OBJECT_0, "WaitForSingleObject failed %x\n",ret);
  }
  return sync_id == my_id;
}

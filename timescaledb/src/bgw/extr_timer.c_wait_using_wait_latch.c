
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64 ;
typedef int TimestampTz ;


 int Assert (int ) ;
 scalar_t__ INT_MAX ;
 scalar_t__ MAX_TIMEOUT ;
 int MyLatch ;
 int ResetLatch (int ) ;
 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WL_TIMEOUT ;
 int WaitLatchCompat (int ,int,scalar_t__) ;
 scalar_t__ get_timeout_millisec (int ) ;
 int on_postmaster_death () ;

__attribute__((used)) static bool
wait_using_wait_latch(TimestampTz until)
{
 int wl_rc;

 int64 timeout = get_timeout_millisec(until);

 Assert(timeout >= 0 && "get_timeout_millisec underflow");

 if (timeout > MAX_TIMEOUT)
  timeout = MAX_TIMEOUT;


 if ((int64) timeout > (int64) INT_MAX)
  timeout = INT_MAX;

 wl_rc = WaitLatchCompat(MyLatch, WL_LATCH_SET | WL_TIMEOUT | WL_POSTMASTER_DEATH, timeout);
 ResetLatch(MyLatch);
 if (wl_rc & WL_POSTMASTER_DEATH)
  on_postmaster_death();

 return 1;
}

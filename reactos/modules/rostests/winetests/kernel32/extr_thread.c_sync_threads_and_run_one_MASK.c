#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int LONG ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  num_synced ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  start_event ; 
 int /*<<< orphan*/  stop_event ; 

__attribute__((used)) static BOOL FUNC6(DWORD sync_id, DWORD my_id)
{
  LONG num = FUNC0(&num_synced);
  FUNC4(-1 <= num && num <= 1);
  if (num == 1)
  {
      FUNC1( stop_event );
      FUNC2( start_event );
  }
  else
  {
    DWORD ret = FUNC3(start_event, 10000);
    FUNC5(ret == WAIT_OBJECT_0, "WaitForSingleObject failed %x\n",ret);
  }
  return sync_id == my_id;
}
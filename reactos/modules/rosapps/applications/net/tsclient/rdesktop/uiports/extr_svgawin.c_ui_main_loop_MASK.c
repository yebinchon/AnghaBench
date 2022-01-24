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
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  RDP_LOGON_NORMAL ; 
 int /*<<< orphan*/  True ; 
 int UpAndRunning ; 
 int /*<<< orphan*/  deactivated ; 
 int /*<<< orphan*/  ext_disc_reason ; 
 int /*<<< orphan*/  g_servername ; 
 int /*<<< orphan*/  g_sock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BOOL FUNC7(void)
{
  int sel;
  fd_set rfds;

  if (!FUNC4(g_servername, RDP_LOGON_NORMAL, "", "", "", ""))
    return False;
  UpAndRunning = 1;
  FUNC1(&rfds);
  FUNC0(g_sock, &rfds);
  sel = FUNC6(3, &rfds, NULL, NULL, NULL);
  while (sel >= 0)
  {
    if (sel & 1) /* mouse */
    {
      FUNC3();
    }
    else if (sel & 2) /* keyboard */
    {
      FUNC2();
    }
    else
    {
      if (!FUNC5(&deactivated, &ext_disc_reason))
        return True; /* ok */
    }
    FUNC1(&rfds);
    FUNC0(g_sock, &rfds);
    sel = FUNC6(3, &rfds, NULL, NULL, NULL);
  }
  return True;
}
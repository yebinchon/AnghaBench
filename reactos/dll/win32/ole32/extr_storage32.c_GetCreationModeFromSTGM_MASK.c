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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  CREATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  STGM_CONVERT 130 
#define  STGM_CREATE 129 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  STGM_FAILIFTHERE 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC4(DWORD stgm)
{
  switch(FUNC2(stgm))
  {
  case STGM_CREATE:
    return CREATE_ALWAYS;
  case STGM_CONVERT:
    FUNC1("STGM_CONVERT not implemented!\n");
    return CREATE_NEW;
  case STGM_FAILIFTHERE:
    return CREATE_NEW;
  }
  FUNC0("Invalid create mode!\n");
  FUNC3(0);
  return 0;
}
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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int FUNC1 (int) ; 
#define  STGM_READ 130 
#define  STGM_READWRITE 129 
#define  STGM_WRITE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC3(DWORD stgm)
{
  switch (FUNC1(stgm))
  {
  case STGM_READ:
    return GENERIC_READ;
  case STGM_WRITE:
  case STGM_READWRITE:
    return GENERIC_READ | GENERIC_WRITE;
  }
  FUNC0("Invalid access mode!\n");
  FUNC2(0);
  return 0;
}
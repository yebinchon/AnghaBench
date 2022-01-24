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
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (int*) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static BOOL FUNC3(int vk)
{
  BYTE key_state[256];
  BOOL result;

  result = FUNC0(key_state);
  FUNC2(result, "GetKeyboardState failed.\n");
  if (!result) return FALSE;
  key_state[vk] &= ~0x80;
  result = FUNC1(key_state);
  FUNC2(result, "SetKeyboardState failed.\n");
  return result != 0;
}
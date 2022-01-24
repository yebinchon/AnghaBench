#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_6__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__* PKEYBOARD_LAYOUT ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 TYPE_1__* CurrentKeyboard ; 
 TYPE_1__* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* ucKeyboard ; 

PKEYBOARD_LAYOUT FUNC2(LPSTR Name)
{
  CHAR tempCmd[256];
  ULONG i;

	for(i=0;ucKeyboard[i].name != NULL;i++)
	  {
	    if(FUNC1(ucKeyboard[i].name, Name) == 0)
	      {
      CurrentKeyboard = &ucKeyboard[i];
		  return CurrentKeyboard;
	      }
	  }
  return FUNC0();
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
typedef  scalar_t__ UCHAR ;
struct TYPE_4__ {TYPE_1__* normal; TYPE_1__* alted; TYPE_1__* shifted; } ;
struct TYPE_3__ {scalar_t__ s; scalar_t__ a; } ;
typedef  TYPE_1__* PSCANTOASCII ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ bAlt ; 
 scalar_t__ bShift ; 

UCHAR FUNC4(UCHAR s)
{
  PSCANTOASCII table;
  ULONG i;

  FUNC1();

  if (bShift)
    {
      table = FUNC2()->shifted;
    }
  else if(bAlt)
    {
      table = FUNC2()->alted;
    }
  else
    {
      table = FUNC2()->normal;
    }


  if (table)
    {
	  for(i=0;table[i].s != 0;i++)
	    {
	      if(table[i].s==s)
	        {
			  FUNC3();
			  return table[i].a;
	        }
	    }
    }

  FUNC0((0,"AsciiFromScan(): no translation for key\n"));
  FUNC3();
  return 0;
}
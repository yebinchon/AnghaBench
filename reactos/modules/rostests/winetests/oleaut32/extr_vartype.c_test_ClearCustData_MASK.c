#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  varValue; } ;
struct TYPE_4__ {int cCustData; TYPE_2__* prgCustData; } ;
typedef  int /*<<< orphan*/  CUSTDATAITEM ;
typedef  TYPE_1__ CUSTDATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 int NUM_CUST_ITEMS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
  CUSTDATA ci;
  unsigned i;

  ci.cCustData = NUM_CUST_ITEMS;
  ci.prgCustData = FUNC1( sizeof(CUSTDATAITEM) * NUM_CUST_ITEMS );
  for (i = 0; i < NUM_CUST_ITEMS; i++)
    FUNC2(&ci.prgCustData[i].varValue);
  FUNC0(&ci);
  FUNC3(!ci.cCustData && !ci.prgCustData, "ClearCustData didn't clear fields!\n");
}
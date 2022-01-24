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
struct TYPE_6__ {scalar_t__ nLevels; struct TYPE_6__* pParent; } ;
typedef  TYPE_1__* PDNODE ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*) ; 

INT
FUNC2(PDNODE p1, PDNODE p2)
{
   PDNODE p1save, p2save;
   INT ret;

   FUNC0(p1 && p2);

   p1save = p1;
   p2save = p2;

   // get p1 and p2 to the same level

   while (p1->nLevels > p2->nLevels)
      p1 = p1->pParent;

   while (p2->nLevels > p1->nLevels)
      p2 = p2->pParent;

   // compare those paths

   FUNC0(p1 && p2);

   ret = FUNC1(p1, p2);

   if (ret == 0)
      ret = (INT)p1save->nLevels - (INT)p2save->nLevels;

   return ret;
}
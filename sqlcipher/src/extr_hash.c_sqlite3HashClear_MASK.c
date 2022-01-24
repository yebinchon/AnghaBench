#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ count; scalar_t__ htsize; TYPE_1__* ht; TYPE_1__* first; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef  TYPE_1__ HashElem ;
typedef  TYPE_2__ Hash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(Hash *pH){
  HashElem *elem;         /* For looping over all elements of the table */

  FUNC0( pH!=0 );
  elem = pH->first;
  pH->first = 0;
  FUNC1(pH->ht);
  pH->ht = 0;
  pH->htsize = 0;
  while( elem ){
    HashElem *next_elem = elem->next;
    FUNC1(elem);
    elem = next_elem;
  }
  pH->count = 0;
}
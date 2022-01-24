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
struct attr_item {struct attr_item* next; int /*<<< orphan*/  mode; int /*<<< orphan*/  fname; int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct attr_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct attr_item **list)
{
  struct attr_item *item, *prev;

  for (item = *list; item != NULL; )
    {
      FUNC2(item->fname,item->time);
      FUNC0(item->fname,item->mode);
      prev = item;
      item = item->next;
      FUNC1(prev);
    }
  *list = NULL;
}
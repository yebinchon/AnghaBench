#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* text; scalar_t__ active; } ;

/* Variables and functions */
 int choice_count ; 
 TYPE_1__* choices ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(void)
{
    int		      i;

    FUNC0("\n\nInstall will do for you:\n");
    for (i = 0; i < choice_count; ++i)
      if (choices[i].active)
	  FUNC0("%2d  %s\n", i + 1, choices[i].text);
    FUNC0("To change an item, enter its number\n\n");
    FUNC0("Enter item number, h (help), d (do it) or q (quit): ");
}
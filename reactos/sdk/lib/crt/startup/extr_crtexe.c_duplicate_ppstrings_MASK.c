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

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3 (int ac, char ***av)
{
	char **avl;
	int i;
	char **n = (char **) FUNC0 (sizeof (char *) * (ac + 1));

	avl=*av;
	for (i=0; i < ac; i++)
	  {
		size_t l = FUNC2 (avl[i]) + 1;
		n[i] = (char *) FUNC0 (l);
		FUNC1 (n[i], avl[i], l);
	  }
	n[i] = NULL;
	*av = n;
}
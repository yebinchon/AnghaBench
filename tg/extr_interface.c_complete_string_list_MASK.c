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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char const*,int) ; 

int FUNC3 (char **list, int index, const char *text, int len, char **R) {
  index ++;
  while (list[index] && FUNC2 (list[index], text, len)) {
    index ++;
  }
  if (list[index]) {
    *R = FUNC1 (list[index]);
    FUNC0 (*R);
    return index;
  } else {
    *R = 0;
    return -1;
  }
}
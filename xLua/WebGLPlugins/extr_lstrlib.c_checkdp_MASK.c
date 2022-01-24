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
 char FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char*,char,int) ; 

__attribute__((used)) static void FUNC2 (char *buff, int nb) {
  if (FUNC1(buff, '.', nb) == NULL) {  /* no dot? */
    char point = FUNC0();  /* try locale point */
    char *ppoint = (char *)FUNC1(buff, point, nb);
    if (ppoint) *ppoint = '.';  /* change it to a dot */
  }
}
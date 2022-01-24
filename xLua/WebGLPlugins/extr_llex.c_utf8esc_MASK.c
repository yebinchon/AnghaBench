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
typedef  int /*<<< orphan*/  LexState ;

/* Variables and functions */
 int UTF8BUFFSZ ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static void FUNC3 (LexState *ls) {
  char buff[UTF8BUFFSZ];
  int n = FUNC0(buff, FUNC1(ls));
  for (; n > 0; n--)  /* add 'buff' to string */
    FUNC2(ls, buff[UTF8BUFFSZ - n]);
}
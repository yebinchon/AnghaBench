#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char c; } ;
typedef  TYPE_1__ CPState ;

/* Variables and functions */
 char FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(CPState *cp)
{
  do {
    if (FUNC0(cp) == '*') {
      do {
	if (FUNC0(cp) == '/') { FUNC0(cp); return; }
      } while (cp->c == '*');
    }
    if (FUNC1(cp->c)) FUNC2(cp);
  } while (cp->c != '\0');
}
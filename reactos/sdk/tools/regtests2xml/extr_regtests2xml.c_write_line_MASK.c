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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  out ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(char *line)
{
  char buf[200];

  FUNC1(buf, 0, sizeof(buf));
  FUNC2(buf, line);
  /* Terminate the line */
  buf[FUNC3(buf)] = '\r';
  buf[FUNC3(buf)] = '\n';

  (void)FUNC0(&buf[0], 1, FUNC3(buf), out);
}
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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(const char *argv0){
  FUNC1(stderr, "Usage: %s FILENAME COMMAND ...\n", argv0);
  FUNC1(stderr,
    "COMMANDs:\n"
    "   apply DB           Apply the changeset to database file DB\n"
    "   concat FILE2 OUT   Concatenate FILENAME and FILE2 into OUT\n"
    "   dump               Show the complete content of the changeset\n"
    "   invert OUT         Write an inverted changeset into file OUT\n"
    "   sql                Give a pseudo-SQL rendering of the changeset\n"
  );
  FUNC0(1);
}
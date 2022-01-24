#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  e; int /*<<< orphan*/  p; int /*<<< orphan*/  b; } ;
typedef  TYPE_1__ SBuf ;
typedef  scalar_t__ MSize ;

/* Variables and functions */
 scalar_t__ LJ_MIN_SBUF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(SBuf *sb, MSize sz)
{
  MSize osz = FUNC4(sb), len = FUNC3(sb), nsz = osz;
  char *b;
  if (nsz < LJ_MIN_SBUF) nsz = LJ_MIN_SBUF;
  while (nsz < sz) nsz += nsz;
  b = (char *)FUNC0(FUNC2(sb), FUNC1(sb), osz, nsz);
  FUNC5(sb->b, b);
  FUNC5(sb->p, b + len);
  FUNC5(sb->e, b + nsz);
}
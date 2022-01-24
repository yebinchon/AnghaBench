#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  varinfo; int /*<<< orphan*/  uvinfo; } ;
struct TYPE_5__ {int /*<<< orphan*/  sb; } ;
typedef  TYPE_1__ LexState ;
typedef  TYPE_2__ GCproto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(LexState *ls, GCproto *pt, uint8_t *p, size_t ofsvar)
{
  FUNC3(pt->uvinfo, p);
  FUNC3(pt->varinfo, (char *)p + ofsvar);
  FUNC0(p, FUNC1(&ls->sb), FUNC2(&ls->sb));  /* Copy from temp. buffer. */
}
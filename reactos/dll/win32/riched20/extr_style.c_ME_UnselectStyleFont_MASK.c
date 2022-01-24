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
struct TYPE_6__ {int /*<<< orphan*/  hDC; } ;
struct TYPE_5__ {int /*<<< orphan*/ * font_cache; } ;
typedef  TYPE_1__ ME_Style ;
typedef  TYPE_2__ ME_Context ;
typedef  int /*<<< orphan*/  HFONT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(ME_Context *c, ME_Style *s, HFONT hOldFont)
{
  FUNC0(c->hDC, hOldFont);
  FUNC1(s->font_cache);
  s->font_cache = NULL;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ hDC; } ;
struct TYPE_8__ {scalar_t__ cy; scalar_t__ cx; } ;
typedef  TYPE_1__ SIZE ;
typedef  int /*<<< orphan*/  ME_Style ;
typedef  TYPE_2__ ME_Context ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HGDIOBJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(ME_Context *c, LPCWSTR szText, int nChars, ME_Style *s, SIZE *size)
{
  HGDIOBJ hOldFont;
  if (c->hDC) {
    hOldFont = FUNC1(c, s);
    FUNC0(c->hDC, szText, nChars, size);
    FUNC2(c, s, hOldFont);
  } else {
    size->cx = 0;
    size->cy = 0;
  }
}
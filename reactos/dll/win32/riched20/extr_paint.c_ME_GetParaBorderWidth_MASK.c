#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ dble; } ;
typedef  int /*<<< orphan*/  ME_Context ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int) ; 
 TYPE_1__* border_details ; 

int FUNC3(const ME_Context* c, int flags)
{
  int idx = (flags >> 8) & 0xF;
  int width;

  if (idx >= FUNC0(border_details))
  {
      FUNC1("Unsupported border value %d\n", idx);
      return 0;
  }
  width = FUNC2(c, idx);
  if (border_details[idx].dble) width = width * 2 + 1;
  return width;
}
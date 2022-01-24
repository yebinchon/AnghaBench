#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__ const* next_para; } ;
struct TYPE_8__ {TYPE_1__ para; } ;
struct TYPE_9__ {TYPE_2__ member; } ;
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  TYPE_3__ const ME_DisplayItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__ const*) ; 

__attribute__((used)) static void FUNC1(ME_TextEditor *editor, ME_DisplayItem *first, const ME_DisplayItem *last)
{
  while(first != last)
  {
    FUNC0(editor, first);
    first = first->member.para.next_para;
  }
}
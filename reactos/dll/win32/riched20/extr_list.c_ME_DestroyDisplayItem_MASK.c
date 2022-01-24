#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  entry; } ;
struct TYPE_8__ {int /*<<< orphan*/  style; TYPE_3__* clusters; TYPE_3__* glyphs; TYPE_6__* reobj; } ;
struct TYPE_7__ {TYPE_2__ run; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ member; } ;
typedef  TYPE_3__ ME_DisplayItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ diRun ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(ME_DisplayItem *item)
{
  if (0)
    FUNC3("type=%s\n", FUNC1(item->type));
  if (item->type==diRun)
  {
    if (item->member.run.reobj)
    {
      FUNC5(&item->member.run.reobj->entry);
      FUNC0(item->member.run.reobj);
    }
    FUNC4( item->member.run.glyphs );
    FUNC4( item->member.run.clusters );
    FUNC2(item->member.run.style);
  }
  FUNC4(item);
}
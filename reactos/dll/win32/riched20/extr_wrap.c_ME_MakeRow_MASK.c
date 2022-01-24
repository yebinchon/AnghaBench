#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nHeight; int nBaseline; int nWidth; } ;
struct TYPE_7__ {TYPE_1__ row; } ;
struct TYPE_8__ {TYPE_2__ member; } ;
typedef  TYPE_3__ ME_DisplayItem ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diStartRow ; 

__attribute__((used)) static ME_DisplayItem *FUNC1(int height, int baseline, int width)
{
  ME_DisplayItem *item = FUNC0(diStartRow);

  item->member.row.nHeight = height;
  item->member.row.nBaseline = baseline;
  item->member.row.nWidth = width;
  return item;
}
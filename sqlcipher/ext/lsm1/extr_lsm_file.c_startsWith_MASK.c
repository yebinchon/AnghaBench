#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ iFirst; } ;
typedef  TYPE_1__ Segment ;
typedef  scalar_t__ LsmPgno ;

/* Variables and functions */

__attribute__((used)) static Segment *FUNC0(Segment *pRun, LsmPgno iFirst){
  return (iFirst==pRun->iFirst) ? pRun : 0;
}
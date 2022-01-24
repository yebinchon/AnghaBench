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
struct TYPE_8__ {int /*<<< orphan*/  zErr; } ;
struct TYPE_6__ {int /*<<< orphan*/  zErrMsg; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
typedef  TYPE_2__ CsvTable ;
typedef  TYPE_3__ CsvReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(CsvTable *pTab, CsvReader *pRdr){
  FUNC0(pTab->base.zErrMsg);
  pTab->base.zErrMsg = FUNC1("%s", pRdr->zErr);
}
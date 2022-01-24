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
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_3__ {int nRow; } ;
typedef  TYPE_1__ Cksum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  scanCountDb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(TestDb *pDb){
  Cksum cksum;
  FUNC0(&cksum, 0, sizeof(Cksum));
  FUNC1(pDb, (void *)&cksum, 0, 0, 0, 0, 0, scanCountDb);
  return cksum.nRow;
}
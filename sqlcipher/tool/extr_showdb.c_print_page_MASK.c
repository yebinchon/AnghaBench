#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int pagesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 TYPE_1__ g ; 
 unsigned char* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3(int iPg){
  int iStart;
  unsigned char *aData;
  iStart = (iPg-1)*g.pagesize;
  FUNC0(stdout, "Page %d:   (offsets 0x%x..0x%x)\n",
          iPg, iStart, iStart+g.pagesize-1);
  aData = FUNC1(iStart, g.pagesize, 0);
  FUNC2(aData);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int) ; 
 int pagesize ; 
 int /*<<< orphan*/  FUNC3 (int,int,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int,int,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC5(int iFrame){
  int iStart;
  unsigned char *aData;
  iStart = 32 + (iFrame-1)*(pagesize+24);
  FUNC0(stdout, "Frame %d:   (offsets 0x%x..0x%x)\n",
          iFrame, iStart, iStart+pagesize+24);
  aData = FUNC2(iStart, pagesize+24);
  FUNC4(aData, 0, 4, 0, "Page number");
  FUNC4(aData, 4, 4, 0, "DB size, or 0 for non-commit");
  FUNC4(aData, 8, 4, 1, "Salt-1");
  FUNC4(aData,12, 4, 1, "Salt-2");
  FUNC4(aData,16, 4, 1, "Checksum-1");
  FUNC4(aData,20, 4, 1, "Checksum-2");
  FUNC3(iStart+24, pagesize, aData+24, 0);
  FUNC1(aData);
}
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
 int /*<<< orphan*/  FG_NBO ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static void FUNC2(unsigned char *aData){
  const int i = 96;
  int j;
  FUNC0(aData, 0+i, 4, FG_NBO,  "nBackfill");
  for(j=0; j<5; j++){
    char zLabel[100];
    FUNC1(zLabel, "aReadMark[%d]", j);
    FUNC0(aData, 4*j+4+i, 4, FG_NBO, zLabel);
  }
  FUNC0(aData,24+i, 8, 0,       "aLock");
  FUNC0(aData,32+i, 4, FG_NBO,  "nBackfillAttempted");
  FUNC0(aData,36+i, 4, FG_NBO,  "notUsed0");
}
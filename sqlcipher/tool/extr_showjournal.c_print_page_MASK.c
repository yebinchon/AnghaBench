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
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 scalar_t__ pageSize ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int,char*) ; 
 unsigned char* FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(int iOfst){
  unsigned char *aData;
  char zTitle[50];
  aData = FUNC2(pageSize+8, iOfst);
  FUNC3(zTitle, "page number for page at offset %d", iOfst);
  FUNC1(aData-iOfst, iOfst, 4, zTitle);
  FUNC0(aData);
}
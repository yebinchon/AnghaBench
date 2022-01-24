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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int,int,int) ; 

void FUNC2(char *zFP){
  int x = FUNC0();
  int y = FUNC0();
  int z;
  z = y%10;
  if( z<0 ) z = -z;
  y /= 10;
  FUNC1(100,zFP,"%d.%de%d",y,z,x%200);
}
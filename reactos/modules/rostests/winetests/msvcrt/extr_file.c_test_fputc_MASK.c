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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7( void )
{
  char* tempf;
  FILE *tempfh;
  int  ret;

  tempf=FUNC0(".","wne");
  tempfh = FUNC2(tempf,"wb");
  ret = FUNC3(0,tempfh);
  FUNC5(0 == ret, "fputc(0,tempfh) expected %x got %x\n", 0, ret);
  ret = FUNC3(0xff,tempfh);
  FUNC5(0xff == ret, "fputc(0xff,tempfh) expected %x got %x\n", 0xff, ret);
  ret = FUNC3(0xffffffff,tempfh);
  FUNC5(0xff == ret, "fputc(0xffffffff,tempfh) expected %x got %x\n", 0xff, ret);
  FUNC1(tempfh);

  tempfh = FUNC2(tempf,"rb");
  ret = FUNC3(0,tempfh);
  FUNC5(EOF == ret, "fputc(0,tempfh) on r/o file expected %x got %x\n", EOF, ret);
  FUNC1(tempfh);

  FUNC6(tempf);
  FUNC4(tempf);
}
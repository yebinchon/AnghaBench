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
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10( void )
{
  char* tempf;
  FILE *tempfh;
  int  ich=0xe0, ret;

  tempf=FUNC0(".","wne");
  tempfh = FUNC3(tempf,"w+");
  FUNC4(ich, tempfh);
  FUNC4(ich, tempfh);
  FUNC7(tempfh);
  ret = FUNC2(tempfh);
  FUNC6(ich == ret, "First fgetc expected %x got %x\n", ich, ret);
  ret = FUNC2(tempfh);
  FUNC6(ich == ret, "Second fgetc expected %x got %x\n", ich, ret);
  FUNC1(tempfh);
  tempfh = FUNC3(tempf,"wt");
  FUNC4('\n', tempfh);
  FUNC1(tempfh);
  tempfh = FUNC3(tempf,"wt");
  FUNC8(tempfh, NULL);
  ret = FUNC2(tempfh);
  FUNC6(ret == -1, "Unbuffered fgetc in text mode must failed on \\r\\n\n");
  FUNC1(tempfh);
  FUNC9(tempf);
  FUNC5(tempf);
}
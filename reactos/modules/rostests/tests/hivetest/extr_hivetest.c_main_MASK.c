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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 void* InputHandle ; 
 void* OutputHandle ; 
 int /*<<< orphan*/  FUNC7 (void*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11(int argc, char* argv[])
{
  char Buffer[10];
  DWORD Result;

  FUNC0();
  InputHandle = FUNC6(STD_INPUT_HANDLE);
  OutputHandle = FUNC6(STD_OUTPUT_HANDLE);
  while(1)
  {
    FUNC10("choose test :\n");
    FUNC10("  0 = Exit\n");
    FUNC10("  1 = Create key\n");
    FUNC10("  2 = Delete key\n");
    FUNC10("  3 = Enumerate key\n");
    FUNC10("  4 = Set value (REG_SZ)\n");
    FUNC10("  5 = Set value (REG_DWORD)\n");
    FUNC10("  6 = Delete value\n");
    FUNC10("  7 = Enumerate value\n");
    FUNC7(InputHandle, Buffer, 3, &Result, NULL) ;
    switch (Buffer[0])
    {
     case '0':
      return(0);

     case '1':
      FUNC1();
      break;

     case '2':
      FUNC2();
      break;

     case '3':
      FUNC4();
      break;

     case '4':
      FUNC8();
      break;

     case '5':
      FUNC9();
      break;

     case '6':
      FUNC3();
      break;

     case '7':
      FUNC5();
      break;
    }
  }
  return(0);
}
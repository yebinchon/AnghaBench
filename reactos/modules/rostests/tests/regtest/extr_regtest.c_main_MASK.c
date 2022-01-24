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
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* InputHandle ; 
 void* OutputHandle ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(int argc, char* argv[])
{
 char Buffer[10];
 DWORD Result;

  FUNC0();
  InputHandle = FUNC1(STD_INPUT_HANDLE);
  OutputHandle =  FUNC1(STD_OUTPUT_HANDLE);
  while(1)
  {
    FUNC3("choose test :\n");
    FUNC3("  0=Exit\n");
    FUNC3("  1=Ntxxx read functions\n");
    FUNC3("  2=Ntxxx write functions : volatile keys\n");
    FUNC3("  3=Ntxxx write functions : non volatile keys\n");
    FUNC3("  4=Regxxx functions\n");
    FUNC3("  5=FlushKey \n");
    FUNC3("  6=Registry link create test\n");
    FUNC3("  7=Registry link delete test\n");
    FUNC3("  8=Not available\n");
    FUNC3("  9=Ntxx read tcp/ip key test\n");
    FUNC2(InputHandle, Buffer, 3, &Result, NULL) ;
    switch (Buffer[0])
    {
     case '0':
      return(0);
     case '1':
      FUNC4();
      break;
     case '2':
      FUNC5();
      break;
     case '3':
      FUNC6();
      break;
     case '4':
      FUNC7();
      break;
     case '5':
      FUNC8();
      break;
     case '6':
      FUNC9();
      break;
     case '7':
      FUNC10();
      break;
#if 0
     case '8':
      test8();
      break;
#endif
     case '9':
      FUNC12();
      break;
    }
  }
  return 0;
}